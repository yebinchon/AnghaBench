
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_4__ {TYPE_1__* video_out; } ;
struct TYPE_3__ {int hwdec_devs; } ;
typedef TYPE_2__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 char* hwdec_devices_get_names (int ) ;
 int m_property_strdup_ro (int,void*,char*) ;
 int talloc_free (char*) ;

__attribute__((used)) static int mp_property_hwdec_interop(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->video_out || !mpctx->video_out->hwdec_devs)
        return M_PROPERTY_UNAVAILABLE;

    char *names = hwdec_devices_get_names(mpctx->video_out->hwdec_devs);
    int res = m_property_strdup_ro(action, arg, names);
    talloc_free(names);
    return res;
}
