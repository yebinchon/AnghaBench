
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_id; int prov; } ;
typedef TYPE_1__ EVP_MD ;


 int evp_is_a (int ,int ,char const*) ;

int EVP_MD_is_a(const EVP_MD *md, const char *name)
{
    return evp_is_a(md->prov, md->name_id, name);
}
