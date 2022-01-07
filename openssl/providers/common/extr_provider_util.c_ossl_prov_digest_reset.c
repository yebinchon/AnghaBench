
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * engine; int * md; int * alloc_md; } ;
typedef TYPE_1__ PROV_DIGEST ;


 int EVP_MD_free (int *) ;

void ossl_prov_digest_reset(PROV_DIGEST *pd)
{
    EVP_MD_free(pd->alloc_md);
    pd->alloc_md = ((void*)0);
    pd->md = ((void*)0);
    pd->engine = ((void*)0);
}
