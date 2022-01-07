
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int E_WARNING ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_use_PrivateKey_file (int *,char*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,char*) ;
 int SSL_FILETYPE_PEM ;
 int SSLv23_server_method () ;
 int php_error_docref (int *,int ,char*,char*) ;

__attribute__((used)) static SSL_CTX *php_openssl_create_sni_server_ctx(char *cert_path, char *key_path)
{


 SSL_CTX *ctx = SSL_CTX_new(SSLv23_server_method());

 if (SSL_CTX_use_certificate_chain_file(ctx, cert_path) != 1) {
  php_error_docref(((void*)0), E_WARNING,
   "failed setting local cert chain file `%s'; " "check that your cafile/capath settings include " "details of your certificate and its issuer",


   cert_path
  );
  SSL_CTX_free(ctx);
  return ((void*)0);
 } else if (SSL_CTX_use_PrivateKey_file(ctx, key_path, SSL_FILETYPE_PEM) != 1) {
  php_error_docref(((void*)0), E_WARNING,
   "failed setting private key from file `%s'",
   key_path
  );
  SSL_CTX_free(ctx);
  return ((void*)0);
 }

 return ctx;
}
