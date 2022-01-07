
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {scalar_t__* streams; int slave; int num_streams; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ demuxer_t ;


 int MPMIN (int,int ) ;
 int MP_NOPTS_VALUE ;
 int demux_get_num_stream (int ) ;
 int demux_get_stream (int ,int) ;
 int demux_stream_is_selected (scalar_t__) ;
 int demuxer_select_track (int ,int ,int ,int ) ;

__attribute__((used)) static void reselect_streams(demuxer_t *demuxer)
{
    struct priv *p = demuxer->priv;
    int num_slave = demux_get_num_stream(p->slave);
    for (int n = 0; n < MPMIN(num_slave, p->num_streams); n++) {
        if (p->streams[n]) {
            demuxer_select_track(p->slave, demux_get_stream(p->slave, n),
                MP_NOPTS_VALUE, demux_stream_is_selected(p->streams[n]));
        }
    }
}
