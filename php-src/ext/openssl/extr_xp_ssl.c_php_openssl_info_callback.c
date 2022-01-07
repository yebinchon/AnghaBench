
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_CB_HANDSHAKE_START ;
 int php_openssl_limit_handshake_reneg (int const*) ;

__attribute__((used)) static void php_openssl_info_callback(const SSL *ssl, int where, int ret)
{

 if (where & SSL_CB_HANDSHAKE_START) {
  php_openssl_limit_handshake_reneg(ssl);
 }
}
