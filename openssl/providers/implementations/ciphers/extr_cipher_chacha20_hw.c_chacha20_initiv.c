
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * counter; } ;
struct TYPE_4__ {scalar_t__ oiv; scalar_t__ iv_set; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;
typedef TYPE_2__ PROV_CHACHA20_CTX ;


 unsigned int CHACHA_CTR_SIZE ;
 int CHACHA_U8TOU32 (scalar_t__) ;

__attribute__((used)) static int chacha20_initiv(PROV_CIPHER_CTX *bctx)
{
    PROV_CHACHA20_CTX *ctx = (PROV_CHACHA20_CTX *)bctx;
    unsigned int i;

    if (bctx->iv_set) {
        for (i = 0; i < CHACHA_CTR_SIZE; i += 4)
            ctx->counter[i / 4] = CHACHA_U8TOU32(bctx->oiv + i);
    }
    return 1;
}
