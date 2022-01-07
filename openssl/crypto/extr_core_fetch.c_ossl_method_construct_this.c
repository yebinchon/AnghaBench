
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct construct_data_st {int mcm_data; TYPE_1__* mcm; int operation_id; int * store; int libctx; scalar_t__ force_store; } ;
struct TYPE_5__ {int property_definition; int algorithm_names; int implementation; } ;
struct TYPE_4__ {int (* destruct ) (void*,int ) ;int (* put ) (int ,int *,void*,int *,int ,int ,int ,int ) ;void* (* construct ) (int ,int ,int *,int ) ;} ;
typedef int OSSL_PROVIDER ;
typedef TYPE_2__ OSSL_ALGORITHM ;


 void* stub1 (int ,int ,int *,int ) ;
 int stub2 (int ,int *,void*,int *,int ,int ,int ,int ) ;
 int stub3 (int ,int *,void*,int *,int ,int ,int ,int ) ;
 int stub4 (void*,int ) ;

__attribute__((used)) static void ossl_method_construct_this(OSSL_PROVIDER *provider,
                                       const OSSL_ALGORITHM *algo,
                                       int no_store, void *cbdata)
{
    struct construct_data_st *data = cbdata;
    void *method = ((void*)0);

    if ((method = data->mcm->construct(algo->algorithm_names,
                                       algo->implementation, provider,
                                       data->mcm_data)) == ((void*)0))
        return;
    if (data->force_store || !no_store) {




        data->mcm->put(data->libctx, ((void*)0), method, provider,
                       data->operation_id, algo->algorithm_names,
                       algo->property_definition, data->mcm_data);
    }

    data->mcm->put(data->libctx, data->store, method, provider,
                   data->operation_id, algo->algorithm_names,
                   algo->property_definition, data->mcm_data);


    data->mcm->destruct(method, data->mcm_data);
}
