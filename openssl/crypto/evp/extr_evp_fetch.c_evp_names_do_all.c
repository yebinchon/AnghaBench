
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;


 int ossl_namemap_doall_names (int *,int,void (*) (char const*,void*),void*) ;
 int * ossl_namemap_stored (int *) ;
 int * ossl_provider_library_context (int *) ;

void evp_names_do_all(OSSL_PROVIDER *prov, int number,
                      void (*fn)(const char *name, void *data),
                      void *data)
{
    OPENSSL_CTX *libctx = ossl_provider_library_context(prov);
    OSSL_NAMEMAP *namemap = ossl_namemap_stored(libctx);

    ossl_namemap_doall_names(namemap, number, fn, data);
}
