
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hw; } ;
struct TYPE_4__ {scalar_t__ (* aead_cipher ) (TYPE_2__*,unsigned char*,size_t*,int *,int ) ;} ;
typedef TYPE_1__ PROV_CIPHER_HW_CHACHA20_POLY1305 ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 scalar_t__ stub1 (TYPE_2__*,unsigned char*,size_t*,int *,int ) ;

__attribute__((used)) static int chacha20_poly1305_final(void *vctx, unsigned char *out, size_t *outl,
                                   size_t outsize)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    PROV_CIPHER_HW_CHACHA20_POLY1305 *hw =
        (PROV_CIPHER_HW_CHACHA20_POLY1305 *)ctx->hw;

    if (hw->aead_cipher(ctx, out, outl, ((void*)0), 0) <= 0)
        return 0;

    *outl = 0;
    return 1;
}
