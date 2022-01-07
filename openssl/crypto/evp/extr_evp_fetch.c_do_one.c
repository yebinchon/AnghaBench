
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct do_all_data_st {int (* free_method ) (void*) ;int user_arg; int (* user_fn ) (void*,int ) ;void* (* new_method ) (int,int ,int *) ;} ;
struct TYPE_3__ {int implementation; int algorithm_names; } ;
typedef int OSSL_PROVIDER ;
typedef int OSSL_NAMEMAP ;
typedef TYPE_1__ OSSL_ALGORITHM ;
typedef int OPENSSL_CTX ;


 int add_names_to_namemap (int *,int ) ;
 int * ossl_namemap_stored (int *) ;
 int * ossl_provider_library_context (int *) ;
 void* stub1 (int,int ,int *) ;
 int stub2 (void*,int ) ;
 int stub3 (void*) ;

__attribute__((used)) static void do_one(OSSL_PROVIDER *provider, const OSSL_ALGORITHM *algo,
                   int no_store, void *vdata)
{
    struct do_all_data_st *data = vdata;
    OPENSSL_CTX *libctx = ossl_provider_library_context(provider);
    OSSL_NAMEMAP *namemap = ossl_namemap_stored(libctx);
    int name_id = add_names_to_namemap(namemap, algo->algorithm_names);
    void *method = ((void*)0);

    if (name_id != 0)
        method = data->new_method(name_id, algo->implementation, provider);

    if (method != ((void*)0)) {
        data->user_fn(method, data->user_arg);
        data->free_method(method);
    }
}
