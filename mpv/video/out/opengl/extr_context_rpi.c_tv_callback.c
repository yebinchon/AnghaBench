
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int reload_display; } ;


 int atomic_store (int *,int) ;
 int vo_wakeup (int ) ;

__attribute__((used)) static void tv_callback(void *callback_data, uint32_t reason, uint32_t param1,
                        uint32_t param2)
{
    struct ra_ctx *ctx = callback_data;
    struct priv *p = ctx->priv;
    atomic_store(&p->reload_display, 1);
    vo_wakeup(ctx->vo);
}
