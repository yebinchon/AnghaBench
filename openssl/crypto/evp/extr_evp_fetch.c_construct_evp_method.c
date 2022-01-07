
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evp_method_data_st {void* (* method_from_dispatch ) (int,int const*,int *) ;} ;
typedef int OSSL_PROVIDER ;
typedef int OSSL_NAMEMAP ;
typedef int OSSL_DISPATCH ;
typedef int OPENSSL_CTX ;


 int add_names_to_namemap (int *,char const*) ;
 int * ossl_namemap_stored (int *) ;
 int * ossl_provider_library_context (int *) ;
 void* stub1 (int,int const*,int *) ;

__attribute__((used)) static void *construct_evp_method(const char *names, const OSSL_DISPATCH *fns,
                                  OSSL_PROVIDER *prov, void *data)
{






    struct evp_method_data_st *methdata = data;
    OPENSSL_CTX *libctx = ossl_provider_library_context(prov);
    OSSL_NAMEMAP *namemap = ossl_namemap_stored(libctx);
    int name_id = add_names_to_namemap(namemap, names);

    if (name_id == 0)
        return ((void*)0);
    return methdata->method_from_dispatch(name_id, fns, prov);
}
