
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct TYPE_13__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_12__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct priv {int tex; int renderer; TYPE_2__ dst_rect; TYPE_1__ src_rect; int osd_pts; } ;
struct TYPE_14__ {int pts; } ;
typedef TYPE_3__ mp_image_t ;
struct TYPE_15__ {scalar_t__ h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_4__ SDL_Rect ;


 int SDL_BLENDMODE_NONE ;
 int SDL_RenderClear (int ) ;
 int SDL_RenderCopy (int ,int ,TYPE_4__*,TYPE_4__*) ;
 int SDL_SetRenderDrawColor (int ,int ,int ,int ,int) ;
 int SDL_SetTextureBlendMode (int ,int ) ;
 int SDL_UnlockTexture (int ) ;
 int draw_osd (struct vo*) ;
 int lock_texture (struct vo*,TYPE_3__*) ;
 int mp_image_copy (TYPE_3__*,TYPE_3__*) ;
 int talloc_free (TYPE_3__*) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    struct priv *vc = vo->priv;


    SDL_SetRenderDrawColor(vc->renderer, 0, 0, 0, 255);
    SDL_RenderClear(vc->renderer);

    SDL_SetTextureBlendMode(vc->tex, SDL_BLENDMODE_NONE);

    if (mpi) {
        vc->osd_pts = mpi->pts;

        mp_image_t texmpi;
        if (!lock_texture(vo, &texmpi)) {
            talloc_free(mpi);
            return;
        }

        mp_image_copy(&texmpi, mpi);

        SDL_UnlockTexture(vc->tex);

        talloc_free(mpi);
    }

    SDL_Rect src, dst;
    src.x = vc->src_rect.x0;
    src.y = vc->src_rect.y0;
    src.w = vc->src_rect.x1 - vc->src_rect.x0;
    src.h = vc->src_rect.y1 - vc->src_rect.y0;
    dst.x = vc->dst_rect.x0;
    dst.y = vc->dst_rect.y0;
    dst.w = vc->dst_rect.x1 - vc->dst_rect.x0;
    dst.h = vc->dst_rect.y1 - vc->dst_rect.y0;

    SDL_RenderCopy(vc->renderer, vc->tex, &src, &dst);

    draw_osd(vo);
}
