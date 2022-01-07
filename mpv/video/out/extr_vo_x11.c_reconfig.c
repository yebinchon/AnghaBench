
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {TYPE_1__* sws; int original_image; } ;
struct mp_image_params {int dummy; } ;
struct TYPE_2__ {struct mp_image_params src; } ;


 int mp_image_unrefp (int *) ;
 int resize (struct vo*) ;
 int vo_x11_config_vo_window (struct vo*) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *fmt)
{
    struct priv *p = vo->priv;

    mp_image_unrefp(&p->original_image);

    p->sws->src = *fmt;

    vo_x11_config_vo_window(vo);

    if (!resize(vo))
        return -1;

    return 0;
}
