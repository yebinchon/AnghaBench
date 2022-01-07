
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * alloc_cipher; int cipher; int engine; } ;
typedef TYPE_1__ PROV_CIPHER ;


 int EVP_CIPHER_up_ref (int *) ;

int ossl_prov_cipher_copy(PROV_CIPHER *dst, const PROV_CIPHER *src)
{
    if (src->alloc_cipher != ((void*)0) && !EVP_CIPHER_up_ref(src->alloc_cipher))
        return 0;
    dst->engine = src->engine;
    dst->cipher = src->cipher;
    dst->alloc_cipher = src->alloc_cipher;
    return 1;
}
