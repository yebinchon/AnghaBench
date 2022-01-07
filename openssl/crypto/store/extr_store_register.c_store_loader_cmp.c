
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * scheme; } ;
typedef TYPE_1__ OSSL_STORE_LOADER ;


 int assert (int) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int store_loader_cmp(const OSSL_STORE_LOADER *a,
                            const OSSL_STORE_LOADER *b)
{
    assert(a->scheme != ((void*)0) && b->scheme != ((void*)0));
    return strcmp(a->scheme, b->scheme);
}
