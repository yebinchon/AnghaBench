
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {int (* cipher ) (void*,unsigned char*,int *,int ) ;} ;
typedef TYPE_2__ PROV_AES_SIV_CTX ;


 int stub1 (void*,unsigned char*,int *,int ) ;

__attribute__((used)) static int siv_stream_final(void *vctx, unsigned char *out, size_t *outl,
                            size_t outsize)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;

    if (!ctx->hw->cipher(vctx, out, ((void*)0), 0))
        return 0;

    if (outl != ((void*)0))
        *outl = 0;
    return 1;
}
