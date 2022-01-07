
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sub_bitmaps {int dummy; } ;
struct osd_state {int draw_cache; } ;
struct draw_on_image_closure {int changed; int dest; int pool; struct osd_state* osd; } ;


 int mp_draw_sub_bitmaps (int *,int ,struct sub_bitmaps*) ;
 int mp_image_pool_make_writeable (int ,int ) ;
 int talloc_steal (struct osd_state*,int ) ;

__attribute__((used)) static void draw_on_image(void *ctx, struct sub_bitmaps *imgs)
{
    struct draw_on_image_closure *closure = ctx;
    struct osd_state *osd = closure->osd;
    if (!mp_image_pool_make_writeable(closure->pool, closure->dest))
        return;
    mp_draw_sub_bitmaps(&osd->draw_cache, closure->dest, imgs);
    talloc_steal(osd, osd->draw_cache);
    closure->changed = 1;
}
