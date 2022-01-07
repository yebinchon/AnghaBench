
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_recorder_sink {int dummy; } ;
struct mp_recorder {int num_streams; TYPE_1__* mux; struct mp_recorder_sink** streams; scalar_t__ opened; } ;
struct TYPE_3__ {int pb; } ;


 int MP_ERR (struct mp_recorder*,char*) ;
 scalar_t__ av_write_trailer (TYPE_1__*) ;
 int avformat_free_context (TYPE_1__*) ;
 scalar_t__ avio_closep (int *) ;
 int flush_packets (struct mp_recorder*) ;
 int mux_packets (struct mp_recorder_sink*,int) ;
 int talloc_free (struct mp_recorder*) ;

void mp_recorder_destroy(struct mp_recorder *priv)
{
    if (priv->opened) {
        for (int n = 0; n < priv->num_streams; n++) {
            struct mp_recorder_sink *rst = priv->streams[n];
            mux_packets(rst, 1);
        }

        if (av_write_trailer(priv->mux) < 0)
            MP_ERR(priv, "Writing trailer failed.\n");
    }

    if (priv->mux) {
        if (avio_closep(&priv->mux->pb) < 0)
            MP_ERR(priv, "Closing file failed\n");

        avformat_free_context(priv->mux);
    }

    flush_packets(priv);
    talloc_free(priv);
}
