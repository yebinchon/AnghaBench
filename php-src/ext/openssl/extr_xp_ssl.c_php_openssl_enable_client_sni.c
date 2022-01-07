
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int php_stream ;
struct TYPE_3__ {char* url_name; int ssl_handle; } ;
typedef TYPE_1__ php_openssl_netstream_data_t ;


 scalar_t__ GET_VER_OPT (char*) ;
 int GET_VER_OPT_STRING (char*,char*) ;
 int SSL_set_tlsext_host_name (int ,char*) ;
 int zend_is_true (int *) ;

__attribute__((used)) static void php_openssl_enable_client_sni(php_stream *stream, php_openssl_netstream_data_t *sslsock)
{
 zval *val;
 char *sni_server_name;


 if (GET_VER_OPT("SNI_enabled") && !zend_is_true(val)) {
  return;
 }

 sni_server_name = sslsock->url_name;

 GET_VER_OPT_STRING("peer_name", sni_server_name);

 if (sni_server_name) {
  SSL_set_tlsext_host_name(sslsock->ssl_handle, sni_server_name);
 }
}
