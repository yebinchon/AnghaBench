
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {size_t output_surface; struct mp_image** output_surfaces; struct mp_image** swdec_surfaces; } ;
struct mp_image {scalar_t__ imgfmt; } ;


 scalar_t__ IMGFMT_VAAPI ;
 int MP_WARN (struct vo*,char*) ;
 int draw_osd (struct vo*) ;
 int mp_image_copy_attributes (struct mp_image*,struct mp_image*) ;
 struct mp_image* mp_image_new_ref (struct mp_image*) ;
 int talloc_free (struct mp_image*) ;
 scalar_t__ va_surface_upload (struct priv*,struct mp_image*,struct mp_image*) ;

__attribute__((used)) static void draw_image(struct vo *vo, struct mp_image *mpi)
{
    struct priv *p = vo->priv;

    if (mpi->imgfmt != IMGFMT_VAAPI) {
        struct mp_image *dst = p->swdec_surfaces[p->output_surface];
        if (!dst || va_surface_upload(p, dst, mpi) < 0) {
            MP_WARN(vo, "Could not upload surface.\n");
            talloc_free(mpi);
            return;
        }
        mp_image_copy_attributes(dst, mpi);
        talloc_free(mpi);
        mpi = mp_image_new_ref(dst);
    }

    talloc_free(p->output_surfaces[p->output_surface]);
    p->output_surfaces[p->output_surface] = mpi;

    draw_osd(vo);
}
