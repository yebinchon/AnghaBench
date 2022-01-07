
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_stream ;
typedef int SSL_CTX ;


 int E_WARNING ;
 scalar_t__ FAILURE ;
 int PHP_STREAM_CONTEXT (int *) ;
 long SSL_CTX_get_options (int *) ;
 int SSL_CTX_set_options (int *,long) ;
 int SSL_CTX_set_tmp_rsa_callback (int *,int ) ;
 long SSL_OP_CIPHER_SERVER_PREFERENCE ;
 long SSL_OP_SINGLE_DH_USE ;
 int SUCCESS ;
 int php_error_docref (int *,int ,char*) ;
 int php_openssl_set_server_dh_param (int *,int *) ;
 scalar_t__ php_openssl_set_server_ecdh_curve (int *,int *) ;
 int php_openssl_tmp_rsa_cb ;
 int * php_stream_context_get_option (int ,char*,char*) ;
 scalar_t__ zend_is_true (int *) ;

__attribute__((used)) static int php_openssl_set_server_specific_opts(php_stream *stream, SSL_CTX *ctx)
{
 zval *zv;
 long ssl_ctx_options = SSL_CTX_get_options(ctx);
 SSL_CTX_set_tmp_rsa_callback(ctx, php_openssl_tmp_rsa_cb);


 if (php_stream_context_get_option(PHP_STREAM_CONTEXT(stream), "ssl", "rsa_key_size") != ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "rsa_key_size context option has been removed");
 }

 php_openssl_set_server_dh_param(stream, ctx);
 zv = php_stream_context_get_option(PHP_STREAM_CONTEXT(stream), "ssl", "single_dh_use");
 if (zv == ((void*)0) || zend_is_true(zv)) {
  ssl_ctx_options |= SSL_OP_SINGLE_DH_USE;
 }

 zv = php_stream_context_get_option(PHP_STREAM_CONTEXT(stream), "ssl", "honor_cipher_order");
 if (zv == ((void*)0) || zend_is_true(zv)) {
  ssl_ctx_options |= SSL_OP_CIPHER_SERVER_PREFERENCE;
 }

 SSL_CTX_set_options(ctx, ssl_ctx_options);

 return SUCCESS;
}
