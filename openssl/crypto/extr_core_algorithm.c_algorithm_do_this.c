
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct algorithm_data_st {int operation_id; int data; int (* fn ) (int *,TYPE_1__ const*,int,int ) ;} ;
struct TYPE_4__ {int * algorithm_names; } ;
typedef int OSSL_PROVIDER ;
typedef TYPE_1__ OSSL_ALGORITHM ;


 int OSSL_OP__HIGHEST ;
 TYPE_1__* ossl_provider_query_operation (int *,int,int*) ;
 int stub1 (int *,TYPE_1__ const*,int,int ) ;

__attribute__((used)) static int algorithm_do_this(OSSL_PROVIDER *provider, void *cbdata)
{
    struct algorithm_data_st *data = cbdata;
    int no_store = 0;
    int first_operation = 1;
    int last_operation = OSSL_OP__HIGHEST;
    int cur_operation;
    int ok = 0;

    if (data->operation_id != 0)
        first_operation = last_operation = data->operation_id;

    for (cur_operation = first_operation;
         cur_operation <= last_operation;
         cur_operation++) {
        const OSSL_ALGORITHM *map =
            ossl_provider_query_operation(provider, data->operation_id,
                                          &no_store);

        if (map == ((void*)0))
            break;

        ok = 1;
        while (map->algorithm_names != ((void*)0)) {
            const OSSL_ALGORITHM *thismap = map++;

            data->fn(provider, thismap, no_store, data->data);
        }
    }

    return ok;
}
