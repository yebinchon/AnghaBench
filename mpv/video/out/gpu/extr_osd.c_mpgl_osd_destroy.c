
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpgl_osd_part {int texture; } ;
struct mpgl_osd {int ra; struct mpgl_osd_part** parts; } ;


 int MAX_OSD_PARTS ;
 int ra_tex_free (int ,int *) ;
 int talloc_free (struct mpgl_osd*) ;

void mpgl_osd_destroy(struct mpgl_osd *ctx)
{
    if (!ctx)
        return;

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct mpgl_osd_part *p = ctx->parts[n];
        ra_tex_free(ctx->ra, &p->texture);
    }
    talloc_free(ctx);
}
