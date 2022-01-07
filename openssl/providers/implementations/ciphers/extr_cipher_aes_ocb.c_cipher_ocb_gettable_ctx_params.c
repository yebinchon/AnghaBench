
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* cipher_ocb_known_gettable_ctx_params ;

__attribute__((used)) static const OSSL_PARAM *cipher_ocb_gettable_ctx_params(void)
{
    return cipher_ocb_known_gettable_ctx_params;
}
