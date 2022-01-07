
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * alloc_md; int md; int engine; } ;
typedef TYPE_1__ PROV_DIGEST ;


 int EVP_MD_up_ref (int *) ;

int ossl_prov_digest_copy(PROV_DIGEST *dst, const PROV_DIGEST *src)
{
    if (src->alloc_md != ((void*)0) && !EVP_MD_up_ref(src->alloc_md))
        return 0;
    dst->engine = src->engine;
    dst->md = src->md;
    dst->alloc_md = src->alloc_md;
    return 1;
}
