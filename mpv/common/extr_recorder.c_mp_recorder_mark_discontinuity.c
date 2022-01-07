
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_recorder_sink {int discont; int proper_eof; } ;
struct mp_recorder {int num_streams; int muxing; int muxing_from_start; struct mp_recorder_sink** streams; } ;


 int flush_packets (struct mp_recorder*) ;
 int mux_packets (struct mp_recorder_sink*,int) ;

void mp_recorder_mark_discontinuity(struct mp_recorder *priv)
{
    flush_packets(priv);

    for (int n = 0; n < priv->num_streams; n++) {
        struct mp_recorder_sink *rst = priv->streams[n];
        mux_packets(rst, 1);
        rst->discont = 1;
        rst->proper_eof = 0;
    }

    priv->muxing = 0;
    priv->muxing_from_start = 0;
}
