
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int pkey_type; } ;
typedef TYPE_1__ EVP_MD ;


 TYPE_1__* evp_md_new () ;

EVP_MD *EVP_MD_meth_new(int md_type, int pkey_type)
{
    EVP_MD *md = evp_md_new();

    if (md != ((void*)0)) {
        md->type = md_type;
        md->pkey_type = pkey_type;
    }
    return md;
}
