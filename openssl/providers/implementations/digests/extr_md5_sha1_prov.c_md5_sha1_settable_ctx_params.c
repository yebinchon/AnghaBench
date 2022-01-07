
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* known_md5_sha1_settable_ctx_params ;

__attribute__((used)) static const OSSL_PARAM *md5_sha1_settable_ctx_params(void)
{
    return known_md5_sha1_settable_ctx_params;
}
