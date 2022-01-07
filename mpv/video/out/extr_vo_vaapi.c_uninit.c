
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {scalar_t__ hwdec_devs; struct priv* priv; } ;
struct vaapi_osd_part {int image; } ;
struct priv {TYPE_1__* mpvaapi; struct vaapi_osd_part* osd_parts; int pool; } ;
struct TYPE_2__ {int hwctx; } ;


 int MAX_OSD_PARTS ;
 int free_subpicture (struct priv*,int *) ;
 int free_video_specific (struct priv*) ;
 int hwdec_devices_destroy (scalar_t__) ;
 int hwdec_devices_remove (scalar_t__,int *) ;
 int talloc_free (int ) ;
 int va_destroy (TYPE_1__*) ;
 int vo_x11_uninit (struct vo*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *p = vo->priv;

    free_video_specific(p);
    talloc_free(p->pool);

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct vaapi_osd_part *part = &p->osd_parts[n];
        free_subpicture(p, &part->image);
    }

    if (vo->hwdec_devs) {
        hwdec_devices_remove(vo->hwdec_devs, &p->mpvaapi->hwctx);
        hwdec_devices_destroy(vo->hwdec_devs);
    }

    va_destroy(p->mpvaapi);

    vo_x11_uninit(vo);
}
