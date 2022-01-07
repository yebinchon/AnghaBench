
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_stream {scalar_t__ type; TYPE_1__* codec; int tags; } ;
struct replaygain_data {int dummy; } ;
struct demux_internal {int num_streams; struct sh_stream** streams; } ;
struct TYPE_5__ {int metadata; int log; struct demux_internal* in; } ;
typedef TYPE_2__ demuxer_t ;
struct TYPE_4__ {int replaygain_data; } ;


 scalar_t__ STREAM_AUDIO ;
 struct replaygain_data* decode_rgain (int ,int ) ;
 int talloc_steal (struct demux_internal*,struct replaygain_data*) ;

__attribute__((used)) static void demux_update_replaygain(demuxer_t *demuxer)
{
    struct demux_internal *in = demuxer->in;
    for (int n = 0; n < in->num_streams; n++) {
        struct sh_stream *sh = in->streams[n];
        if (sh->type == STREAM_AUDIO && !sh->codec->replaygain_data) {
            struct replaygain_data *rg = decode_rgain(demuxer->log, sh->tags);
            if (!rg)
                rg = decode_rgain(demuxer->log, demuxer->metadata);
            if (rg)
                sh->codec->replaygain_data = talloc_steal(in, rg);
        }
    }
}
