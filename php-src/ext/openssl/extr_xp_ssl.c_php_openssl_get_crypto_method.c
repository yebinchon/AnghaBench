
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int php_stream_context ;


 int STREAM_CRYPTO_IS_CLIENT ;
 int * php_stream_context_get_option (int *,char*,char*) ;
 int zval_get_long (int *) ;

__attribute__((used)) static zend_long php_openssl_get_crypto_method(
  php_stream_context *ctx, zend_long crypto_method)
{
 zval *val;

 if (ctx && (val = php_stream_context_get_option(ctx, "ssl", "crypto_method")) != ((void*)0)) {
  crypto_method = zval_get_long(val);
  crypto_method |= STREAM_CRYPTO_IS_CLIENT;
 }

 return crypto_method;
}
