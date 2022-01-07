
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;


 char const* ossl_namemap_num2name (int *,int,int ) ;
 int * ossl_namemap_stored (int *) ;
 int * ossl_provider_library_context (int *) ;

const char *evp_first_name(OSSL_PROVIDER *prov, int name_id)
{
    OPENSSL_CTX *libctx = ossl_provider_library_context(prov);
    OSSL_NAMEMAP *namemap = ossl_namemap_stored(libctx);

    return ossl_namemap_num2name(namemap, name_id, 0);
}
