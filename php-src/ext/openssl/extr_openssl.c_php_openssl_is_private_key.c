
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int DSA ;
typedef int DH ;
typedef int BIGNUM ;


 int DH_get0_key (int *,int const**,int const**) ;
 int DH_get0_pqg (int *,int const**,int const**,int const**) ;
 int DSA_get0_key (int *,int const**,int const**) ;
 int DSA_get0_pqg (int *,int const**,int const**,int const**) ;
 int * EC_KEY_get0_private_key (int *) ;
 int * EVP_PKEY_get0_DH (int *) ;
 int * EVP_PKEY_get0_DSA (int *) ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 int * EVP_PKEY_get0_RSA (int *) ;
 int EVP_PKEY_id (int *) ;
 int E_WARNING ;
 int RSA_get0_factors (int *,int const**,int const**) ;
 int assert (int ) ;
 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static int php_openssl_is_private_key(EVP_PKEY* pkey)
{
 assert(pkey != ((void*)0));

 switch (EVP_PKEY_id(pkey)) {
  case 129:
  case 128:
   {
    RSA *rsa = EVP_PKEY_get0_RSA(pkey);
    if (rsa != ((void*)0)) {
     const BIGNUM *p, *q;

     RSA_get0_factors(rsa, &p, &q);
      if (p == ((void*)0) || q == ((void*)0)) {
      return 0;
      }
    }
   }
   break;
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
   {
    DSA *dsa = EVP_PKEY_get0_DSA(pkey);
    if (dsa != ((void*)0)) {
     const BIGNUM *p, *q, *g, *pub_key, *priv_key;

     DSA_get0_pqg(dsa, &p, &q, &g);
     if (p == ((void*)0) || q == ((void*)0)) {
      return 0;
     }

     DSA_get0_key(dsa, &pub_key, &priv_key);
     if (priv_key == ((void*)0)) {
      return 0;
     }
    }
   }
   break;
  case 136:
   {
    DH *dh = EVP_PKEY_get0_DH(pkey);
    if (dh != ((void*)0)) {
     const BIGNUM *p, *q, *g, *pub_key, *priv_key;

     DH_get0_pqg(dh, &p, &q, &g);
     if (p == ((void*)0)) {
      return 0;
     }

     DH_get0_key(dh, &pub_key, &priv_key);
     if (priv_key == ((void*)0)) {
      return 0;
     }
    }
   }
   break;
  default:
   php_error_docref(((void*)0), E_WARNING, "key type not supported in this PHP build!");
   break;
 }
 return 1;
}
