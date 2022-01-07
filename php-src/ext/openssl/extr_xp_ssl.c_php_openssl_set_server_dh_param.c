
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_stream ;
typedef int SSL_CTX ;
typedef int DH ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,int ) ;
 int DH_free (int *) ;
 int E_WARNING ;
 int FAILURE ;
 int * PEM_read_bio_DHparams (int *,int *,int *,int *) ;
 int PHP_OPENSSL_BIO_MODE_R (int ) ;
 int PHP_STREAM_CONTEXT (int *) ;
 int PKCS7_BINARY ;
 int SSL_CTX_set_dh_auto (int *,int) ;
 scalar_t__ SSL_CTX_set_tmp_dh (int *,int *) ;
 int SUCCESS ;
 int Z_STRVAL_P (int *) ;
 int php_error_docref (int *,int ,char*) ;
 int * php_stream_context_get_option (int ,char*,char*) ;
 int try_convert_to_string (int *) ;

__attribute__((used)) static int php_openssl_set_server_dh_param(php_stream * stream, SSL_CTX *ctx)
{
 DH *dh;
 BIO* bio;
 zval *zdhpath;

 zdhpath = php_stream_context_get_option(PHP_STREAM_CONTEXT(stream), "ssl", "dh_param");
 if (zdhpath == ((void*)0)) {






  return SUCCESS;
 }

 if (!try_convert_to_string(zdhpath)) {
  return FAILURE;
 }

 bio = BIO_new_file(Z_STRVAL_P(zdhpath), PHP_OPENSSL_BIO_MODE_R(PKCS7_BINARY));

 if (bio == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "invalid dh_param");
  return FAILURE;
 }

 dh = PEM_read_bio_DHparams(bio, ((void*)0), ((void*)0), ((void*)0));
 BIO_free(bio);

 if (dh == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "failed reading DH params");
  return FAILURE;
 }

 if (SSL_CTX_set_tmp_dh(ctx, dh) < 0) {
  php_error_docref(((void*)0), E_WARNING, "failed assigning DH params");
  DH_free(dh);
  return FAILURE;
 }

 DH_free(dh);

 return SUCCESS;
}
