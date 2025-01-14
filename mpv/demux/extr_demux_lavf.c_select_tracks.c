
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sh_stream {int attached_picture; } ;
struct demuxer {TYPE_3__* priv; } ;
struct TYPE_7__ {int num_streams; TYPE_1__* avfc; TYPE_2__** streams; } ;
typedef TYPE_3__ lavf_priv_t ;
struct TYPE_8__ {int discard; } ;
struct TYPE_6__ {struct sh_stream* sh; } ;
struct TYPE_5__ {TYPE_4__** streams; } ;
typedef TYPE_4__ AVStream ;


 int AVDISCARD_ALL ;
 int AVDISCARD_DEFAULT ;
 scalar_t__ demux_stream_is_selected (struct sh_stream*) ;

__attribute__((used)) static void select_tracks(struct demuxer *demuxer, int start)
{
    lavf_priv_t *priv = demuxer->priv;
    for (int n = start; n < priv->num_streams; n++) {
        struct sh_stream *stream = priv->streams[n]->sh;
        AVStream *st = priv->avfc->streams[n];
        bool selected = stream && demux_stream_is_selected(stream) &&
                        !stream->attached_picture;
        st->discard = selected ? AVDISCARD_DEFAULT : AVDISCARD_ALL;
    }
}
