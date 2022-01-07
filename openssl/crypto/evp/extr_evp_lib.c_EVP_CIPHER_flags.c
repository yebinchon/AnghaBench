
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int EVP_CIPHER ;


 unsigned int EVP_CIPHER_flags (int const*) ;
 unsigned int EVP_CIPH_MODE ;
 int OSSL_CIPHER_PARAM_MODE ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_uint (int ,unsigned int*) ;
 int evp_do_ciph_getparams (int const*,int *) ;

int EVP_CIPHER_mode(const EVP_CIPHER *cipher)
{
    int ok;
    unsigned int v = EVP_CIPHER_flags(cipher) & EVP_CIPH_MODE;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = OSSL_PARAM_construct_uint(OSSL_CIPHER_PARAM_MODE, &v);
    ok = evp_do_ciph_getparams(cipher, params);

    return ok != 0 ? (int)v : 0;
}
