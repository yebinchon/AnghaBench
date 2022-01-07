
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name_id; int * prov; } ;
typedef TYPE_1__ EVP_MD ;


 int EVP_MD_nid (TYPE_1__ const*) ;
 char const* OBJ_nid2sn (int ) ;
 char const* evp_first_name (int *,int ) ;

const char *EVP_MD_name(const EVP_MD *md)
{
    if (md->prov != ((void*)0))
        return evp_first_name(md->prov, md->name_id);

    return OBJ_nid2sn(EVP_MD_nid(md));



}
