
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_4__ {int playback_initialized; } ;
typedef TYPE_1__ MPContext ;


 int MPSEEK_ABSOLUTE ;
 int MPSEEK_DEFAULT ;
 int M_PROPERTY_OK ;
 int M_PROPERTY_SET ;
 int M_PROPERTY_UNAVAILABLE ;
 int get_playback_time (TYPE_1__*) ;
 int property_time (int,void*,int ) ;
 int queue_seek (TYPE_1__*,int ,double,int ,int ) ;

__attribute__((used)) static int mp_property_playback_time(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->playback_initialized)
        return M_PROPERTY_UNAVAILABLE;

    if (action == M_PROPERTY_SET) {
        queue_seek(mpctx, MPSEEK_ABSOLUTE, *(double *)arg, MPSEEK_DEFAULT, 0);
        return M_PROPERTY_OK;
    }
    return property_time(action, arg, get_playback_time(mpctx));
}
