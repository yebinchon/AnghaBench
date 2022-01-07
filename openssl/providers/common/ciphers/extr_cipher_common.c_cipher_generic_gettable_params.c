
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* cipher_known_gettable_params ;

const OSSL_PARAM *cipher_generic_gettable_params(void)
{
    return cipher_known_gettable_params;
}
