
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_recorder_sink {int num_packets; int * packets; } ;
struct mp_recorder {int num_streams; struct mp_recorder_sink** streams; } ;


 int talloc_free (int ) ;

__attribute__((used)) static void flush_packets(struct mp_recorder *priv)
{
    for (int n = 0; n < priv->num_streams; n++) {
        struct mp_recorder_sink *rst = priv->streams[n];
        for (int i = 0; i < rst->num_packets; i++)
            talloc_free(rst->packets[i]);
        rst->num_packets = 0;
    }
}
