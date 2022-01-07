
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct vo {TYPE_3__* priv; } ;
struct mp_image {int dummy; } ;
struct TYPE_12__ {int pts; } ;
typedef TYPE_2__ mp_image_t ;
struct TYPE_13__ {int plane_count; int have_image; int osd_pts; TYPE_1__* planes; scalar_t__ use_textures; int d3d_device; } ;
typedef TYPE_3__ d3d_priv ;
struct TYPE_11__ {int texture; } ;


 int d3d_draw_frame (TYPE_3__*) ;
 int d3d_unlock_video_objects (TYPE_3__*) ;
 int d3dtex_update (TYPE_3__*,int *) ;
 int get_video_buffer (TYPE_3__*,struct mp_image*) ;
 int mp_image_copy (struct mp_image*,TYPE_2__*) ;
 int talloc_free (TYPE_2__*) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    d3d_priv *priv = vo->priv;
    if (!priv->d3d_device)
        goto done;

    struct mp_image buffer;
    if (!get_video_buffer(priv, &buffer))
        goto done;

    mp_image_copy(&buffer, mpi);

    d3d_unlock_video_objects(priv);

    if (priv->use_textures) {
        for (int n = 0; n < priv->plane_count; n++) {
            d3dtex_update(priv, &priv->planes[n].texture);
        }
    }

    priv->have_image = 1;
    priv->osd_pts = mpi->pts;

    d3d_draw_frame(priv);

done:
    talloc_free(mpi);
}
