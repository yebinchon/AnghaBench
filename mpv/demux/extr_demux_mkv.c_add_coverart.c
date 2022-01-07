
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_stream {int title; TYPE_2__* attached_picture; TYPE_1__* codec; scalar_t__ index; scalar_t__ demuxer_id; } ;
struct demuxer {int num_attachments; struct demux_attachment* attachments; } ;
struct demux_attachment {int name; int data_size; int data; int type; } ;
struct TYPE_5__ {int keyframe; scalar_t__ pts; } ;
struct TYPE_4__ {char const* codec; } ;


 int STREAM_VIDEO ;
 int demux_add_sh_stream (struct demuxer*,struct sh_stream*) ;
 struct sh_stream* demux_alloc_sh_stream (int ) ;
 char* mp_map_mimetype_to_video_codec (int ) ;
 TYPE_2__* new_demux_packet_from (int ,int ) ;
 int talloc_steal (struct sh_stream*,TYPE_2__*) ;

__attribute__((used)) static void add_coverart(struct demuxer *demuxer)
{
    for (int n = 0; n < demuxer->num_attachments; n++) {
        struct demux_attachment *att = &demuxer->attachments[n];
        const char *codec = mp_map_mimetype_to_video_codec(att->type);
        if (!codec)
            continue;
        struct sh_stream *sh = demux_alloc_sh_stream(STREAM_VIDEO);
        sh->demuxer_id = -1 - sh->index;
        sh->codec->codec = codec;
        sh->attached_picture = new_demux_packet_from(att->data, att->data_size);
        if (sh->attached_picture) {
            sh->attached_picture->pts = 0;
            talloc_steal(sh, sh->attached_picture);
            sh->attached_picture->keyframe = 1;
        }
        sh->title = att->name;
        demux_add_sh_stream(demuxer, sh);
    }
}
