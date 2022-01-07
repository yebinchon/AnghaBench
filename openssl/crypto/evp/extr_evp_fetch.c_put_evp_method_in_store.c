
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct evp_method_data_st {int destruct_method; int refcnt_up_method; } ;
typedef int OSSL_PROVIDER ;
typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;


 int NAME_SEPARATOR ;
 int evp_method_id (int,int) ;
 void* get_evp_method_store (int *) ;
 int ossl_method_store_add (void*,int const*,int ,char const*,void*,int ,int ) ;
 int ossl_namemap_name2num_n (int *,char const*,size_t) ;
 int * ossl_namemap_stored (int *) ;
 char* strchr (char const*,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int put_evp_method_in_store(OPENSSL_CTX *libctx, void *store,
                                   void *method, const OSSL_PROVIDER *prov,
                                   int operation_id, const char *names,
                                   const char *propdef, void *data)
{
    struct evp_method_data_st *methdata = data;
    OSSL_NAMEMAP *namemap;
    int name_id;
    uint32_t meth_id;
    size_t l = 0;







    if (names != ((void*)0)) {
        const char *q = strchr(names, NAME_SEPARATOR);

        l = (q == ((void*)0) ? strlen(names) : (size_t)(q - names));
    }

    if ((namemap = ossl_namemap_stored(libctx)) == ((void*)0)
        || (name_id = ossl_namemap_name2num_n(namemap, names, l)) == 0
        || (meth_id = evp_method_id(operation_id, name_id)) == 0)
        return 0;

    if (store == ((void*)0)
        && (store = get_evp_method_store(libctx)) == ((void*)0))
        return 0;

    return ossl_method_store_add(store, prov, meth_id, propdef, method,
                                 methdata->refcnt_up_method,
                                 methdata->destruct_method);
}
