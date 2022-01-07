
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {int image_width; int dither_buffer; int dither; int screen_h; int screen_w; int canvas; int image_height; } ;
struct TYPE_4__ {int * stride; int * planes; } ;
typedef TYPE_1__ mp_image_t ;


 int caca_dither_bitmap (int ,int ,int ,int ,int ,int ,int ) ;
 int depth ;
 int memcpy_pic (int ,int ,int,int ,int,int ) ;
 int talloc_free (TYPE_1__*) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    struct priv *priv = vo->priv;
    memcpy_pic(priv->dither_buffer, mpi->planes[0], priv->image_width * depth, priv->image_height,
               priv->image_width * depth, mpi->stride[0]);
    caca_dither_bitmap(priv->canvas, 0, 0, priv->screen_w, priv->screen_h, priv->dither, priv->dither_buffer);
    talloc_free(mpi);
}
