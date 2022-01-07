
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* cipher_aead_known_gettable_ctx_params ;

const OSSL_PARAM *cipher_aead_gettable_ctx_params(void)
{
    return cipher_aead_known_gettable_ctx_params;
}
