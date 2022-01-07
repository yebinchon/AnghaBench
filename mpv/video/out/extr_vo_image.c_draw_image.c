
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vo {int osd; int params; struct priv* priv; } ;
struct priv {TYPE_1__* current; } ;
struct mp_osd_res {int dummy; } ;
struct TYPE_4__ {int pts; } ;
typedef TYPE_1__ mp_image_t ;


 int OSD_DRAW_SUB_ONLY ;
 int osd_draw_on_image (int ,struct mp_osd_res,int ,int ,TYPE_1__*) ;
 struct mp_osd_res osd_res_from_image_params (int ) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    struct priv *p = vo->priv;

    p->current = mpi;

    struct mp_osd_res dim = osd_res_from_image_params(vo->params);
    osd_draw_on_image(vo->osd, dim, mpi->pts, OSD_DRAW_SUB_ONLY, p->current);
}
