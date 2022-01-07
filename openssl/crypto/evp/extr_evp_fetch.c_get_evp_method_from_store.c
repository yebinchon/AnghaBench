
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct evp_method_data_st {int name_id; char* names; int (* refcnt_up_method ) (void*) ;int propquery; int operation_id; } ;
typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;


 int NAME_SEPARATOR ;
 int evp_method_id (int ,int) ;
 void* get_evp_method_store (int *) ;
 int ossl_method_store_fetch (void*,int ,int ,void**) ;
 int ossl_namemap_name2num_n (int *,char const*,size_t) ;
 int * ossl_namemap_stored (int *) ;
 char* strchr (char const*,int ) ;
 size_t strlen (char const*) ;
 int stub1 (void*) ;

__attribute__((used)) static void *get_evp_method_from_store(OPENSSL_CTX *libctx, void *store,
                                       void *data)
{
    struct evp_method_data_st *methdata = data;
    void *method = ((void*)0);
    int name_id;
    uint32_t meth_id;






    if ((name_id = methdata->name_id) == 0) {
        OSSL_NAMEMAP *namemap = ossl_namemap_stored(libctx);
        const char *names = methdata->names;
        const char *q = strchr(names, NAME_SEPARATOR);
        size_t l = (q == ((void*)0) ? strlen(names) : (size_t)(q - names));

        if (namemap == 0)
            return ((void*)0);
        name_id = ossl_namemap_name2num_n(namemap, names, l);
    }

    if (name_id == 0
        || (meth_id = evp_method_id(methdata->operation_id, name_id)) == 0)
        return ((void*)0);

    if (store == ((void*)0)
        && (store = get_evp_method_store(libctx)) == ((void*)0))
        return ((void*)0);

    (void)ossl_method_store_fetch(store, meth_id, methdata->propquery,
                                  &method);

    if (method != ((void*)0)
        && !methdata->refcnt_up_method(method)) {
        method = ((void*)0);
    }
    return method;
}
