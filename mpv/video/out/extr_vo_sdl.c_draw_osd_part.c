
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int renderer; struct osd_bitmap_surface* osd_surfaces; } ;
struct osd_target {int dest; int source; scalar_t__ tex2; scalar_t__ tex; } ;
struct osd_bitmap_surface {int num_targets; struct osd_target* targets; } ;


 int SDL_RenderCopy (int ,scalar_t__,int *,int *) ;

__attribute__((used)) static void draw_osd_part(struct vo *vo, int index)
{
    struct priv *vc = vo->priv;
    struct osd_bitmap_surface *sfc = &vc->osd_surfaces[index];
    int i;

    for (i = 0; i < sfc->num_targets; i++) {
        struct osd_target *target = sfc->targets + i;
        if (target->tex)
            SDL_RenderCopy(vc->renderer, target->tex,
                           &target->source, &target->dest);
        if (target->tex2)
            SDL_RenderCopy(vc->renderer, target->tex2,
                           &target->source, &target->dest);
    }
}
