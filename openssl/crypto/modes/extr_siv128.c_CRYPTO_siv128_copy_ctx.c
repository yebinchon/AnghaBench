
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * mac_ctx_init; int cipher_ctx; int d; } ;
typedef TYPE_1__ SIV128_CONTEXT ;


 int EVP_CIPHER_CTX_copy (int ,int ) ;
 int * EVP_MAC_CTX_dup (int *) ;
 int EVP_MAC_CTX_free (int *) ;
 int memcpy (int *,int *,int) ;

int CRYPTO_siv128_copy_ctx(SIV128_CONTEXT *dest, SIV128_CONTEXT *src)
{
    memcpy(&dest->d, &src->d, sizeof(src->d));
    if (!EVP_CIPHER_CTX_copy(dest->cipher_ctx, src->cipher_ctx))
        return 0;
    EVP_MAC_CTX_free(dest->mac_ctx_init);
    dest->mac_ctx_init = EVP_MAC_CTX_dup(src->mac_ctx_init);
    if (dest->mac_ctx_init == ((void*)0))
        return 0;
    return 1;
}
