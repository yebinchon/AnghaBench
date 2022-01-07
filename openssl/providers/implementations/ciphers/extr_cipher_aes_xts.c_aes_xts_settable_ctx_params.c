
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* aes_xts_known_settable_ctx_params ;

__attribute__((used)) static const OSSL_PARAM *aes_xts_settable_ctx_params(void)
{
    return aes_xts_known_settable_ctx_params;
}
