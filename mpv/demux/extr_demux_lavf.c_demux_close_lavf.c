
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct stream_info {TYPE_3__* sh; } ;
struct TYPE_14__ {int num_nested; int num_streams; int stream; scalar_t__ own_stream; struct stream_info** streams; TYPE_9__* pb; TYPE_1__* nested; TYPE_8__* avfc; } ;
typedef TYPE_4__ lavf_priv_t ;
struct TYPE_15__ {TYPE_4__* priv; } ;
typedef TYPE_5__ demuxer_t ;
struct TYPE_17__ {struct TYPE_17__* buffer; } ;
struct TYPE_16__ {int * pb; } ;
struct TYPE_13__ {TYPE_2__* codec; } ;
struct TYPE_12__ {int lav_codecpar; } ;
struct TYPE_11__ {int * id; } ;
typedef int AVIOContext ;


 int MP_WARN (TYPE_5__*,char*,int) ;
 int av_freep (TYPE_9__**) ;
 int avcodec_parameters_free (int *) ;
 int avformat_close_input (TYPE_8__**) ;
 int free_stream (int ) ;
 int talloc_free (TYPE_4__*) ;

__attribute__((used)) static void demux_close_lavf(demuxer_t *demuxer)
{
    lavf_priv_t *priv = demuxer->priv;
    if (priv) {

        AVIOContext *leaking = priv->avfc ? priv->avfc->pb : ((void*)0);
        avformat_close_input(&priv->avfc);




        if (priv->num_nested == 1 && priv->nested[0].id == leaking)
            priv->num_nested = 0;
        if (priv->num_nested) {
            MP_WARN(demuxer, "Leaking %d nested connections (FFmpeg bug).\n",
                    priv->num_nested);
        }
        if (priv->pb)
            av_freep(&priv->pb->buffer);
        av_freep(&priv->pb);
        for (int n = 0; n < priv->num_streams; n++) {
            struct stream_info *info = priv->streams[n];
            if (info->sh)
                avcodec_parameters_free(&info->sh->codec->lav_codecpar);
        }
        if (priv->own_stream)
            free_stream(priv->stream);
        talloc_free(priv);
        demuxer->priv = ((void*)0);
    }
}
