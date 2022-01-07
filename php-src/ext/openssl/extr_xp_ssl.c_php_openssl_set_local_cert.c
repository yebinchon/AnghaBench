
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_stream ;
typedef int SSL_CTX ;


 int E_WARNING ;
 int FAILURE ;
 int GET_VER_OPT_STRING (char*,char const*) ;
 int MAXPATHLEN ;
 int SSL_CTX_check_private_key (int *) ;
 int SSL_CTX_use_PrivateKey_file (int *,char*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,char*) ;
 int SSL_FILETYPE_PEM ;
 int SUCCESS ;
 scalar_t__ VCWD_REALPATH (char const*,char*) ;
 int php_error_docref (int *,int ,char*,...) ;

__attribute__((used)) static int php_openssl_set_local_cert(SSL_CTX *ctx, php_stream *stream)
{
 zval *val = ((void*)0);
 char *certfile = ((void*)0);

 GET_VER_OPT_STRING("local_cert", certfile);

 if (certfile) {
  char resolved_path_buff[MAXPATHLEN];
  const char *private_key = ((void*)0);

  if (VCWD_REALPATH(certfile, resolved_path_buff)) {

   if (SSL_CTX_use_certificate_chain_file(ctx, resolved_path_buff) != 1) {
    php_error_docref(((void*)0), E_WARNING,
     "Unable to set local cert chain file `%s'; Check that your cafile/capath "
     "settings include details of your certificate and its issuer",
     certfile);
    return FAILURE;
   }
   GET_VER_OPT_STRING("local_pk", private_key);

   if (private_key) {
    char resolved_path_buff_pk[MAXPATHLEN];
    if (VCWD_REALPATH(private_key, resolved_path_buff_pk)) {
     if (SSL_CTX_use_PrivateKey_file(ctx, resolved_path_buff_pk, SSL_FILETYPE_PEM) != 1) {
      php_error_docref(((void*)0), E_WARNING, "Unable to set private key file `%s'", resolved_path_buff_pk);
      return FAILURE;
     }
    }
   } else {
    if (SSL_CTX_use_PrivateKey_file(ctx, resolved_path_buff, SSL_FILETYPE_PEM) != 1) {
     php_error_docref(((void*)0), E_WARNING, "Unable to set private key file `%s'", resolved_path_buff);
     return FAILURE;
    }
   }

   if (!SSL_CTX_check_private_key(ctx)) {
    php_error_docref(((void*)0), E_WARNING, "Private key does not match certificate!");
   }
  }
 }

 return SUCCESS;
}
