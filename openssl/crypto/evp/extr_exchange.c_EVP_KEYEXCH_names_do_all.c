
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_id; int * prov; } ;
typedef TYPE_1__ EVP_KEYEXCH ;


 int evp_names_do_all (int *,int ,void (*) (char const*,void*),void*) ;

void EVP_KEYEXCH_names_do_all(const EVP_KEYEXCH *keyexch,
                              void (*fn)(const char *name, void *data),
                              void *data)
{
    if (keyexch->prov != ((void*)0))
        evp_names_do_all(keyexch->prov, keyexch->name_id, fn, data);
}
