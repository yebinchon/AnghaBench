
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int RSA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int ) ;
 int E_WARNING ;
 int RSA_F4 ;
 int RSA_free (int *) ;
 int RSA_generate_key_ex (int *,int,int *,int *) ;
 int * RSA_new () ;
 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static RSA *php_openssl_tmp_rsa_cb(SSL *s, int is_export, int keylength)
{
 BIGNUM *bn = ((void*)0);
 static RSA *rsa_tmp = ((void*)0);

 if (!rsa_tmp && ((bn = BN_new()) == ((void*)0))) {
  php_error_docref(((void*)0), E_WARNING, "allocation error generating RSA key");
 }
 if (!rsa_tmp && bn) {
  if (!BN_set_word(bn, RSA_F4) || ((rsa_tmp = RSA_new()) == ((void*)0)) ||
   !RSA_generate_key_ex(rsa_tmp, keylength, bn, ((void*)0))) {
   if (rsa_tmp) {
    RSA_free(rsa_tmp);
   }
   rsa_tmp = ((void*)0);
  }
  BN_free(bn);
 }

 return (rsa_tmp);
}
