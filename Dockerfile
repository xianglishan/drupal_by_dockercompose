FROM drupal:10.0.2-php8.2-apache-bullseye

# Drushインストール
RUN composer global require drush/drush \
  && ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush \
  && drush --version

CMD ["apache2-foreground"]