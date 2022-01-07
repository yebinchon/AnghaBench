
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int pad; size_t keylen; size_t ivlen; unsigned int mode; size_t blocksize; int libctx; int const* hw; int flags; } ;
typedef int PROV_CIPHER_HW ;
typedef TYPE_1__ PROV_CIPHER_CTX ;


 int PROV_LIBRARY_CONTEXT_OF (void*) ;

void cipher_generic_initkey(void *vctx, size_t kbits, size_t blkbits,
                            size_t ivbits, unsigned int mode, uint64_t flags,
                            const PROV_CIPHER_HW *hw, void *provctx)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;

    ctx->flags = flags;
    ctx->pad = 1;
    ctx->keylen = ((kbits) / 8);
    ctx->ivlen = ((ivbits) / 8);
    ctx->hw = hw;
    ctx->mode = mode;
    ctx->blocksize = blkbits / 8;
    if (provctx != ((void*)0))
        ctx->libctx = PROV_LIBRARY_CONTEXT_OF(provctx);
}
