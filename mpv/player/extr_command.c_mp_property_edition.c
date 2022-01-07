
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct m_option {scalar_t__ max; } ;
struct demuxer {scalar_t__ num_editions; int edition; } ;
struct TYPE_4__ {int stop_play; int playback_initialized; struct demuxer* demuxer; } ;
typedef TYPE_1__ MPContext ;




 int M_PROPERTY_GET_TYPE ;
 int M_PROPERTY_OK ;

 int PT_CURRENT_ENTRY ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 int mp_wakeup_core (TYPE_1__*) ;

__attribute__((used)) static int mp_property_edition(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct demuxer *demuxer = mpctx->demuxer;
    if (!mpctx->playback_initialized || !demuxer || demuxer->num_editions <= 0)
        return mp_property_generic_option(mpctx, prop, action, arg);

    int edition = demuxer->edition;

    switch (action) {
    case 130:
        *(int *)arg = edition;
        return M_PROPERTY_OK;
    case 128: {
        edition = *(int *)arg;
        if (edition != demuxer->edition) {
            if (!mpctx->stop_play)
                mpctx->stop_play = PT_CURRENT_ENTRY;
            mp_wakeup_core(mpctx);
            break;
        }
        return M_PROPERTY_OK;
    }
    case 129: {
        int r = mp_property_generic_option(mpctx, prop, M_PROPERTY_GET_TYPE, arg);
        ((struct m_option *)arg)->max = demuxer->num_editions - 1;
        return r;
    }
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
