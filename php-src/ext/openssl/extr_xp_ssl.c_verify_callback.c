
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef int php_stream ;
typedef int X509_STORE_CTX ;
typedef int SSL ;


 scalar_t__ GET_VER_OPT (char*) ;
 int GET_VER_OPT_LONG (char*,scalar_t__) ;
 scalar_t__ OPENSSL_DEFAULT_STREAM_VERIFY_DEPTH ;
 scalar_t__ SSL_get_ex_data (int *,int ) ;
 int SSL_get_ex_data_X509_STORE_CTX_idx () ;
 int X509_STORE_CTX_get_error (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;
 int * X509_STORE_CTX_get_ex_data (int *,int ) ;
 int X509_STORE_CTX_set_error (int *,int ) ;
 int X509_V_ERR_CERT_CHAIN_TOO_LONG ;
 int X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT ;
 int php_openssl_get_ssl_stream_data_index () ;
 scalar_t__ zend_is_true (int *) ;

__attribute__((used)) static int verify_callback(int preverify_ok, X509_STORE_CTX *ctx)
{
 php_stream *stream;
 SSL *ssl;
 int err, depth, ret;
 zval *val;
 zend_ulong allowed_depth = OPENSSL_DEFAULT_STREAM_VERIFY_DEPTH;


 ret = preverify_ok;


 err = X509_STORE_CTX_get_error(ctx);
 depth = X509_STORE_CTX_get_error_depth(ctx);


 ssl = X509_STORE_CTX_get_ex_data(ctx, SSL_get_ex_data_X509_STORE_CTX_idx());
 stream = (php_stream*)SSL_get_ex_data(ssl, php_openssl_get_ssl_stream_data_index());


 if (err == X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT &&
  GET_VER_OPT("allow_self_signed") &&
  zend_is_true(val)
 ) {
  ret = 1;
 }


 GET_VER_OPT_LONG("verify_depth", allowed_depth);
 if ((zend_ulong)depth > allowed_depth) {
  ret = 0;
  X509_STORE_CTX_set_error(ctx, X509_V_ERR_CERT_CHAIN_TOO_LONG);
 }

 return ret;
}
