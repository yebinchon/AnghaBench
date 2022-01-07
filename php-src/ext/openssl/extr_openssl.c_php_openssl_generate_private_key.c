
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct php_x509_request {scalar_t__ priv_key_bits; int priv_key_type; int * priv_key; int curve_name; int section_name; int req_config; } ;
typedef int RSA ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int DSA ;
typedef int DH ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 scalar_t__ BN_new () ;
 int BN_set_word (int *,int ) ;
 char* CONF_get_string (int ,int ,char*) ;
 int DH_check (int *,int*) ;
 int DH_free (int *) ;
 int DH_generate_key (int *) ;
 int DH_generate_parameters_ex (int *,scalar_t__,int,int *) ;
 int DH_get_default_method () ;
 int * DH_new () ;
 int DH_set_method (int *,int ) ;
 int DSA_free (int *) ;
 int DSA_generate_key (int *) ;
 int DSA_generate_parameters_ex (int *,scalar_t__,int *,int ,int *,int *,int *) ;
 int DSA_get_default_method () ;
 int * DSA_new () ;
 int DSA_set_method (int *,int ) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_generate_key (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int EC_KEY_set_asn1_flag (int *,int ) ;
 int EVP_PKEY_assign_DH (int *,int *) ;
 int EVP_PKEY_assign_DSA (int *,int *) ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int EVP_PKEY_assign_RSA (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int E_WARNING ;
 scalar_t__ MIN_KEY_LENGTH ;
 int NID_undef ;
 int OPENSSL_EC_NAMED_CURVE ;




 int PHP_OPENSSL_RAND_ADD_TIME () ;
 int RSA_F4 ;
 scalar_t__ RSA_generate_key (scalar_t__,int ,int *,int *) ;
 int RSA_generate_key_ex (int *,scalar_t__,int *,int *) ;
 int * RSA_new () ;
 int php_error_docref (int *,int ,char*,...) ;
 int php_openssl_load_rand_file (char*,int*,int*) ;
 int php_openssl_store_errors () ;
 int php_openssl_write_rand_file (char*,int,int) ;

__attribute__((used)) static EVP_PKEY * php_openssl_generate_private_key(struct php_x509_request * req)
{
 char * randfile = ((void*)0);
 int egdsocket, seeded;
 EVP_PKEY * return_val = ((void*)0);

 if (req->priv_key_bits < MIN_KEY_LENGTH) {
  php_error_docref(((void*)0), E_WARNING, "private key length is too short; it needs to be at least %d bits, not %d",
    MIN_KEY_LENGTH, req->priv_key_bits);
  return ((void*)0);
 }

 randfile = CONF_get_string(req->req_config, req->section_name, "RANDFILE");
 if (randfile == ((void*)0)) {
  php_openssl_store_errors();
 }
 php_openssl_load_rand_file(randfile, &egdsocket, &seeded);

 if ((req->priv_key = EVP_PKEY_new()) != ((void*)0)) {
  switch(req->priv_key_type) {
   case 128:
    {
     RSA* rsaparam;


     PHP_OPENSSL_RAND_ADD_TIME();
     rsaparam = (RSA*)RSA_generate_key(req->priv_key_bits, RSA_F4, ((void*)0), ((void*)0));
     if (rsaparam && EVP_PKEY_assign_RSA(req->priv_key, rsaparam)) {
      return_val = req->priv_key;
     } else {
      php_openssl_store_errors();
     }
    }
    break;

   case 130:
    PHP_OPENSSL_RAND_ADD_TIME();
    {
     DSA *dsaparam = DSA_new();
     if (dsaparam && DSA_generate_parameters_ex(dsaparam, req->priv_key_bits, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0))) {
      DSA_set_method(dsaparam, DSA_get_default_method());
      if (DSA_generate_key(dsaparam)) {
       if (EVP_PKEY_assign_DSA(req->priv_key, dsaparam)) {
        return_val = req->priv_key;
       } else {
        php_openssl_store_errors();
       }
      } else {
       php_openssl_store_errors();
       DSA_free(dsaparam);
      }
     } else {
      php_openssl_store_errors();
     }
    }
    break;


   case 131:
    PHP_OPENSSL_RAND_ADD_TIME();
    {
     int codes = 0;
     DH *dhparam = DH_new();
     if (dhparam && DH_generate_parameters_ex(dhparam, req->priv_key_bits, 2, ((void*)0))) {
      DH_set_method(dhparam, DH_get_default_method());
      if (DH_check(dhparam, &codes) && codes == 0 && DH_generate_key(dhparam)) {
       if (EVP_PKEY_assign_DH(req->priv_key, dhparam)) {
        return_val = req->priv_key;
       } else {
        php_openssl_store_errors();
       }
      } else {
       php_openssl_store_errors();
       DH_free(dhparam);
      }
     } else {
      php_openssl_store_errors();
     }
    }
    break;
   default:
    php_error_docref(((void*)0), E_WARNING, "Unsupported private key type");
  }
 } else {
  php_openssl_store_errors();
 }

 php_openssl_write_rand_file(randfile, egdsocket, seeded);

 if (return_val == ((void*)0)) {
  EVP_PKEY_free(req->priv_key);
  req->priv_key = ((void*)0);
  return ((void*)0);
 }

 return return_val;
}
