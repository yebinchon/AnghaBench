
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* hw; } ;
struct TYPE_4__ {scalar_t__ (* cipher ) (TYPE_2__*,unsigned char*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ PROV_AES_SIV_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_OUTPUT_BUFFER_TOO_SMALL ;
 scalar_t__ stub1 (TYPE_2__*,unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static int siv_cipher(void *vctx, unsigned char *out, size_t *outl,
                      size_t outsize, const unsigned char *in, size_t inl)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;

    if (outsize < inl) {
        ERR_raise(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
        return 0;
    }

    if (ctx->hw->cipher(ctx, out, in, inl) <= 0)
        return 0;

    if (outl != ((void*)0))
        *outl = inl;
    return 1;
}
