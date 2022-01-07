
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {int * renderer; TYPE_2__* osd_surfaces; int * tex; } ;
struct TYPE_4__ {int targets_size; TYPE_1__* targets; } ;
struct TYPE_3__ {int * tex2; int * tex; } ;


 int MAX_OSD_PARTS ;
 int SDL_DestroyRenderer (int *) ;
 int SDL_DestroyTexture (int *) ;

__attribute__((used)) static void destroy_renderer(struct vo *vo)
{
    struct priv *vc = vo->priv;


    if (vc->tex) {
        SDL_DestroyTexture(vc->tex);
        vc->tex = ((void*)0);
    }

    int i, j;
    for (i = 0; i < MAX_OSD_PARTS; ++i) {
        for (j = 0; j < vc->osd_surfaces[i].targets_size; ++j) {
            if (vc->osd_surfaces[i].targets[j].tex) {
                SDL_DestroyTexture(vc->osd_surfaces[i].targets[j].tex);
                vc->osd_surfaces[i].targets[j].tex = ((void*)0);
            }
            if (vc->osd_surfaces[i].targets[j].tex2) {
                SDL_DestroyTexture(vc->osd_surfaces[i].targets[j].tex2);
                vc->osd_surfaces[i].targets[j].tex2 = ((void*)0);
            }
        }
    }

    if (vc->renderer) {
        SDL_DestroyRenderer(vc->renderer);
        vc->renderer = ((void*)0);
    }
}
