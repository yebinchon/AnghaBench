
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int hwdec_devs; struct priv* priv; } ;
struct TYPE_2__ {int av_device_ref; } ;
struct priv {TYPE_1__ hwctx; int next_image; } ;


 int av_buffer_unref (int *) ;
 int hwdec_devices_remove (int ,TYPE_1__*) ;
 int mp_image_unrefp (int *) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *p = vo->priv;
    mp_image_unrefp(&p->next_image);

    hwdec_devices_remove(vo->hwdec_devs, &p->hwctx);
    av_buffer_unref(&p->hwctx.av_device_ref);
}
