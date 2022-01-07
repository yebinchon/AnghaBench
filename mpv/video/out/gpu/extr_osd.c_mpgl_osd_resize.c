
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpgl_osd {int osd_res; int osd; } ;
struct mp_osd_res {int dummy; } ;


 int osd_resize (int ,int ) ;
 int set_res (struct mpgl_osd*,struct mp_osd_res,int) ;

void mpgl_osd_resize(struct mpgl_osd *ctx, struct mp_osd_res res, int stereo_mode)
{
    set_res(ctx, res, stereo_mode);
    osd_resize(ctx->osd, ctx->osd_res);
}
