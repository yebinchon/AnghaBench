
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpgl_osd_part {scalar_t__ num_subparts; scalar_t__ prev_num_subparts; } ;
struct mpgl_osd {int stereo_mode; int change_flag; struct mpgl_osd_part** parts; int formats; int osd_res; int osd; } ;
struct mp_osd_res {int dummy; } ;


 int MAX_OSD_PARTS ;
 int gen_osd_cb ;
 int osd_draw (int ,int ,double,int,int ,int ,struct mpgl_osd*) ;
 int set_res (struct mpgl_osd*,struct mp_osd_res,int) ;

void mpgl_osd_generate(struct mpgl_osd *ctx, struct mp_osd_res res, double pts,
                       int stereo_mode, int draw_flags)
{
    for (int n = 0; n < MAX_OSD_PARTS; n++)
        ctx->parts[n]->num_subparts = 0;

    set_res(ctx, res, stereo_mode);

    osd_draw(ctx->osd, ctx->osd_res, pts, draw_flags, ctx->formats, gen_osd_cb, ctx);
    ctx->stereo_mode = stereo_mode;



    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct mpgl_osd_part *part = ctx->parts[n];
        if (part->num_subparts != part->prev_num_subparts)
            ctx->change_flag = 1;
        part->prev_num_subparts = part->num_subparts;
    }
}
