
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int pad; scalar_t__ ivlen; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;
typedef void PROV_AES_WRAP_CTX ;


 scalar_t__ AES_WRAP_PAD_IVLEN ;
 void* OPENSSL_zalloc (int) ;
 int cipher_generic_initkey (TYPE_1__*,size_t,size_t,size_t,unsigned int,int ,int *,int *) ;

__attribute__((used)) static void *aes_wrap_newctx(size_t kbits, size_t blkbits,
                             size_t ivbits, unsigned int mode, uint64_t flags)
{
    PROV_AES_WRAP_CTX *wctx = OPENSSL_zalloc(sizeof(*wctx));
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)wctx;

    if (ctx != ((void*)0)) {
        cipher_generic_initkey(ctx, kbits, blkbits, ivbits, mode, flags,
                               ((void*)0), ((void*)0));
        ctx->pad = (ctx->ivlen == AES_WRAP_PAD_IVLEN);
    }
    return wctx;
}
