
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * engine; int * cipher; int * alloc_cipher; } ;
typedef TYPE_1__ PROV_CIPHER ;


 int EVP_CIPHER_free (int *) ;

void ossl_prov_cipher_reset(PROV_CIPHER *pc)
{
    EVP_CIPHER_free(pc->alloc_cipher);
    pc->alloc_cipher = ((void*)0);
    pc->cipher = ((void*)0);
    pc->engine = ((void*)0);
}
