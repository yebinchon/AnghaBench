
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* rc4_hmac_md5_known_gettable_ctx_params ;

const OSSL_PARAM *rc4_hmac_md5_gettable_ctx_params(void)
{
    return rc4_hmac_md5_known_gettable_ctx_params;
}
