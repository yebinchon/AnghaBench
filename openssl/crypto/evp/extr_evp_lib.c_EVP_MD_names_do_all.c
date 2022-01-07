
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_id; int * prov; } ;
typedef TYPE_1__ EVP_MD ;


 int evp_names_do_all (int *,int ,void (*) (char const*,void*),void*) ;

void EVP_MD_names_do_all(const EVP_MD *md,
                         void (*fn)(const char *name, void *data),
                         void *data)
{
    if (md->prov != ((void*)0))
        evp_names_do_all(md->prov, md->name_id, fn, data);
}
