
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_PARAM ;


 char* OPENSSL_FULL_VERSION_STR ;
 char* OPENSSL_VERSION_STR ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_utf8_ptr (int *,char*) ;
 int OSSL_PROV_PARAM_BUILDINFO ;
 int OSSL_PROV_PARAM_NAME ;
 int OSSL_PROV_PARAM_VERSION ;

__attribute__((used)) static int legacy_get_params(const OSSL_PROVIDER *prov, OSSL_PARAM params[])
{
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, OSSL_PROV_PARAM_NAME);
    if (p != ((void*)0) && !OSSL_PARAM_set_utf8_ptr(p, "OpenSSL Legacy Provider"))
        return 0;
    p = OSSL_PARAM_locate(params, OSSL_PROV_PARAM_VERSION);
    if (p != ((void*)0) && !OSSL_PARAM_set_utf8_ptr(p, OPENSSL_VERSION_STR))
        return 0;
    p = OSSL_PARAM_locate(params, OSSL_PROV_PARAM_BUILDINFO);
    if (p != ((void*)0) && !OSSL_PARAM_set_utf8_ptr(p, OPENSSL_FULL_VERSION_STR))
        return 0;

    return 1;
}
