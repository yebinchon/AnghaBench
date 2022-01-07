
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_stream {int type; int demuxer_id; } ;
struct demuxer {int dummy; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;


 int demux_get_num_stream (struct demuxer*) ;
 struct sh_stream* demux_get_stream (struct demuxer*,int) ;

struct sh_stream *demuxer_stream_by_demuxer_id(struct demuxer *d,
                                               enum stream_type t, int id)
{
    int num = demux_get_num_stream(d);
    for (int n = 0; n < num; n++) {
        struct sh_stream *s = demux_get_stream(d, n);
        if (s->type == t && s->demuxer_id == id)
            return s;
    }
    return ((void*)0);
}
