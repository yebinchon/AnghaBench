
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {scalar_t__ priv; } ;
struct demuxer {int dummy; } ;
struct TYPE_4__ {struct demuxer* demuxer; TYPE_1__*** current_track; } ;
struct TYPE_3__ {struct demuxer* demuxer; } ;
typedef TYPE_2__ MPContext ;


 int M_PROPERTY_OK ;
 int M_PROPERTY_PRINT ;
 int M_PROPERTY_UNAVAILABLE ;
 int STREAM_TYPE_COUNT ;
 int demux_get_bitrate_stats (struct demuxer*,double*) ;
 int llrint (double) ;
 int m_property_int64_ro (int,void*,int ) ;
 char* talloc_asprintf (int *,char*,double) ;

__attribute__((used)) static int mp_property_packet_bitrate(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    int type = (uintptr_t)prop->priv & ~0x100;
    bool old = (uintptr_t)prop->priv & 0x100;

    struct demuxer *demuxer = ((void*)0);
    if (mpctx->current_track[0][type])
        demuxer = mpctx->current_track[0][type]->demuxer;
    if (!demuxer)
        demuxer = mpctx->demuxer;
    if (!demuxer)
        return M_PROPERTY_UNAVAILABLE;

    double r[STREAM_TYPE_COUNT];
    demux_get_bitrate_stats(demuxer, r);
    if (r[type] < 0)
        return M_PROPERTY_UNAVAILABLE;


    double rate = r[type] * 8;


    if (old)
        return m_property_int64_ro(action, arg, llrint(rate / 1000.0));

    if (action == M_PROPERTY_PRINT) {
        rate /= 1000;
        if (rate < 1000) {
            *(char **)arg = talloc_asprintf(((void*)0), "%d kbps", (int)rate);
        } else {
            *(char **)arg = talloc_asprintf(((void*)0), "%.3f mbps", rate / 1000.0);
        }
        return M_PROPERTY_OK;
    }
    return m_property_int64_ro(action, arg, llrint(rate));
}
