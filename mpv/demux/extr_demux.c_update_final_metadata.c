
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timed_metadata {struct mp_tags* tags; scalar_t__ from_stream; } ;
struct sh_stream {scalar_t__ type; struct mp_tags* tags; int attached_picture; } ;
struct mp_tags {int dummy; } ;
struct demux_internal {int num_streams; struct sh_stream* metadata_stream; struct sh_stream** streams; TYPE_1__* d_user; } ;
struct TYPE_3__ {int metadata; struct demux_internal* in; } ;
typedef TYPE_1__ demuxer_t ;


 scalar_t__ STREAM_AUDIO ;
 scalar_t__ STREAM_VIDEO ;
 int assert (int) ;
 int mp_tags_merge (int ,struct mp_tags*) ;

__attribute__((used)) static void update_final_metadata(demuxer_t *demuxer, struct timed_metadata *tm)
{
    assert(demuxer == demuxer->in->d_user);
    struct demux_internal *in = demuxer->in;

    struct mp_tags *dyn_tags = ((void*)0);




    int astreams = 0;
    int astream_id = -1;
    int vstreams = 0;
    for (int n = 0; n < in->num_streams; n++) {
        struct sh_stream *sh = in->streams[n];
        if (sh->type == STREAM_VIDEO && !sh->attached_picture)
            vstreams += 1;
        if (sh->type == STREAM_AUDIO) {
            astreams += 1;
            astream_id = n;
        }
    }




    if (vstreams == 0 && astreams == 1 &&
        in->streams[astream_id] == in->metadata_stream)
    {
        dyn_tags = in->metadata_stream->tags;
        if (tm && tm->from_stream)
            dyn_tags = tm->tags;
    }


    if (tm && !tm->from_stream)
        dyn_tags = tm->tags;

    if (dyn_tags)
        mp_tags_merge(demuxer->metadata, dyn_tags);
}
