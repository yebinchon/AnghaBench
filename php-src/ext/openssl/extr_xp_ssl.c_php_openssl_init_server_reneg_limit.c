
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
typedef int php_stream ;
struct TYPE_5__ {int ssl_handle; TYPE_1__* reneg; } ;
typedef TYPE_2__ php_openssl_netstream_data_t ;
typedef int php_openssl_handshake_bucket_t ;
struct TYPE_4__ {scalar_t__ should_close; scalar_t__ tokens; scalar_t__ prev_handshake; scalar_t__ window; scalar_t__ limit; } ;


 scalar_t__ OPENSSL_DEFAULT_RENEG_LIMIT ;
 scalar_t__ OPENSSL_DEFAULT_RENEG_WINDOW ;
 scalar_t__ PHP_STREAM_CONTEXT (int *) ;
 int SSL_set_info_callback (int ,int ) ;
 scalar_t__ pemalloc (int,int ) ;
 int php_openssl_info_callback ;
 int * php_stream_context_get_option (scalar_t__,char*,char*) ;
 int php_stream_is_persistent (int *) ;
 scalar_t__ zval_get_long (int *) ;

__attribute__((used)) static void php_openssl_init_server_reneg_limit(php_stream *stream, php_openssl_netstream_data_t *sslsock)
{
 zval *val;
 zend_long limit = OPENSSL_DEFAULT_RENEG_LIMIT;
 zend_long window = OPENSSL_DEFAULT_RENEG_WINDOW;

 if (PHP_STREAM_CONTEXT(stream) &&
  ((void*)0) != (val = php_stream_context_get_option(PHP_STREAM_CONTEXT(stream), "ssl", "reneg_limit"))
 ) {
  limit = zval_get_long(val);
 }


 if (limit < 0) {
  return;
 }

 if (PHP_STREAM_CONTEXT(stream) &&
  ((void*)0) != (val = php_stream_context_get_option(PHP_STREAM_CONTEXT(stream), "ssl", "reneg_window"))
 ) {
  window = zval_get_long(val);
 }

 sslsock->reneg = (void*)pemalloc(sizeof(php_openssl_handshake_bucket_t),
  php_stream_is_persistent(stream)
 );

 sslsock->reneg->limit = limit;
 sslsock->reneg->window = window;
 sslsock->reneg->prev_handshake = 0;
 sslsock->reneg->tokens = 0;
 sslsock->reneg->should_close = 0;

 SSL_set_info_callback(sslsock->ssl_handle, php_openssl_info_callback);
}
