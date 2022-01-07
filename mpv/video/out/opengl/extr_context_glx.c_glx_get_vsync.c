
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_vsync_info {int dummy; } ;
struct ra_ctx {struct priv* priv; } ;
struct priv {int sync; } ;


 int oml_sync_get_info (int *,struct vo_vsync_info*) ;

__attribute__((used)) static void glx_get_vsync(struct ra_ctx *ctx, struct vo_vsync_info *info)
{
    struct priv *p = ctx->priv;
    oml_sync_get_info(&p->sync, info);
}
