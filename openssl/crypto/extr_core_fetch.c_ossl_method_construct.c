
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct construct_data_st {int operation_id; int force_store; int * store; void* mcm_data; TYPE_1__* mcm; int * libctx; } ;
struct TYPE_3__ {int (* dealloc_tmp_store ) (int *) ;void* (* get ) (int *,int *,void*) ;int * (* alloc_tmp_store ) (int *) ;} ;
typedef TYPE_1__ OSSL_METHOD_CONSTRUCT_METHOD ;
typedef int OPENSSL_CTX ;


 int ossl_algorithm_do_all (int *,int,int *,int ,struct construct_data_st*) ;
 int ossl_method_construct_this ;
 void* stub1 (int *,int *,void*) ;
 int * stub2 (int *) ;
 void* stub3 (int *,int *,void*) ;
 int stub4 (int *) ;

void *ossl_method_construct(OPENSSL_CTX *libctx, int operation_id,
                            int force_store,
                            OSSL_METHOD_CONSTRUCT_METHOD *mcm, void *mcm_data)
{
    void *method = ((void*)0);

    if ((method = mcm->get(libctx, ((void*)0), mcm_data)) == ((void*)0)) {
        struct construct_data_st cbdata;





        if ((cbdata.store = mcm->alloc_tmp_store(libctx)) == ((void*)0))
            goto fin;

        cbdata.libctx = libctx;
        cbdata.operation_id = operation_id;
        cbdata.force_store = force_store;
        cbdata.mcm = mcm;
        cbdata.mcm_data = mcm_data;
        ossl_algorithm_do_all(libctx, operation_id, ((void*)0),
                              ossl_method_construct_this, &cbdata);

        method = mcm->get(libctx, cbdata.store, mcm_data);
        mcm->dealloc_tmp_store(cbdata.store);
    }

 fin:
    return method;
}
