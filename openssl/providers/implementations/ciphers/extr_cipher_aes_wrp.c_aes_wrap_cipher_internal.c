
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ks; } ;
struct TYPE_6__ {size_t (* wrapfn ) (int *,int *,unsigned char*,unsigned char const*,size_t,int ) ;TYPE_1__ ks; } ;
struct TYPE_5__ {int pad; int block; int * iv; scalar_t__ iv_set; scalar_t__ enc; } ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef TYPE_3__ PROV_AES_WRAP_CTX ;


 size_t stub1 (int *,int *,unsigned char*,unsigned char const*,size_t,int ) ;

__attribute__((used)) static int aes_wrap_cipher_internal(void *vctx, unsigned char *out,
                                    const unsigned char *in, size_t inlen)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    PROV_AES_WRAP_CTX *wctx = (PROV_AES_WRAP_CTX *)vctx;
    size_t rv;
    int pad = ctx->pad;


    if (in == ((void*)0))
        return 0;


    if (inlen == 0)
        return -1;


    if (!ctx->enc && (inlen < 16 || inlen & 0x7))
        return -1;


    if (!pad && inlen & 0x7)
        return -1;

    if (out == ((void*)0)) {
        if (ctx->enc) {

            if (pad)
                inlen = (inlen + 7) / 8 * 8;

            return inlen + 8;
        } else {





            return inlen - 8;
        }
    }

    rv = wctx->wrapfn(&wctx->ks.ks, ctx->iv_set ? ctx->iv : ((void*)0), out, in,
                      inlen, ctx->block);
    return rv ? (int)rv : -1;
}
