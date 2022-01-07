
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;


 int ossl_namemap_name2num (int *,char const*) ;
 int * ossl_namemap_stored (int *) ;
 int * ossl_provider_library_context (int *) ;

int evp_is_a(OSSL_PROVIDER *prov, int number, const char *name)
{
    OPENSSL_CTX *libctx = ossl_provider_library_context(prov);
    OSSL_NAMEMAP *namemap = ossl_namemap_stored(libctx);

    return ossl_namemap_name2num(namemap, name) == number;
}
