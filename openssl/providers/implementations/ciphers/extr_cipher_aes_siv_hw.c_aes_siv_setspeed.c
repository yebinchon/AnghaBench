
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int siv; } ;
typedef int SIV128_CONTEXT ;
typedef TYPE_1__ PROV_AES_SIV_CTX ;


 int CRYPTO_siv128_speed (int *,int) ;

__attribute__((used)) static void aes_siv_setspeed(void *vctx, int speed)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;

    CRYPTO_siv128_speed(sctx, (int)speed);
}
