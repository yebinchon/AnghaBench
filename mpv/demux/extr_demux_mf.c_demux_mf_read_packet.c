
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stream {int dummy; } ;
struct demuxer {int global; TYPE_3__* priv; } ;
struct demux_packet {int pts; int keyframe; int stream; int buffer; } ;
struct TYPE_8__ {size_t curr_frame; size_t nr_of_files; char** names; TYPE_2__* sh; struct stream** streams; } ;
typedef TYPE_3__ mf_t ;
typedef struct demux_packet demux_packet_t ;
struct TYPE_9__ {int start; scalar_t__ len; } ;
typedef TYPE_4__ bstr ;
struct TYPE_7__ {int index; TYPE_1__* codec; } ;
struct TYPE_6__ {int fps; } ;


 int MF_MAX_FILE_SIZE ;
 int free_stream (struct stream*) ;
 int memcpy (int ,int ,scalar_t__) ;
 struct demux_packet* new_demux_packet (scalar_t__) ;
 struct stream* stream_open (char*,int ) ;
 TYPE_4__ stream_read_complete (struct stream*,int *,int ) ;
 int stream_seek (struct stream*,int ) ;
 int talloc_free (int ) ;

__attribute__((used)) static bool demux_mf_read_packet(struct demuxer *demuxer,
                                 struct demux_packet **pkt)
{
    mf_t *mf = demuxer->priv;
    if (mf->curr_frame >= mf->nr_of_files)
        return 0;

    struct stream *entry_stream = ((void*)0);
    if (mf->streams)
        entry_stream = mf->streams[mf->curr_frame];
    struct stream *stream = entry_stream;
    if (!stream) {
        char *filename = mf->names[mf->curr_frame];
        if (filename)
            stream = stream_open(filename, demuxer->global);
    }

    if (stream) {
        stream_seek(stream, 0);
        bstr data = stream_read_complete(stream, ((void*)0), MF_MAX_FILE_SIZE);
        if (data.len) {
            demux_packet_t *dp = new_demux_packet(data.len);
            if (dp) {
                memcpy(dp->buffer, data.start, data.len);
                dp->pts = mf->curr_frame / mf->sh->codec->fps;
                dp->keyframe = 1;
                dp->stream = mf->sh->index;
                *pkt = dp;
            }
        }
        talloc_free(data.start);
    }

    if (stream && stream != entry_stream)
        free_stream(stream);

    mf->curr_frame++;
    return 1;
}
