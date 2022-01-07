
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int find; } ;
typedef int OSSL_STORE_find_fn ;
typedef TYPE_1__ OSSL_STORE_LOADER ;



int OSSL_STORE_LOADER_set_find(OSSL_STORE_LOADER *loader,
                               OSSL_STORE_find_fn find_function)
{
    loader->find = find_function;
    return 1;
}
