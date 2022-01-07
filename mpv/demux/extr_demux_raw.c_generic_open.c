
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {int dummy; } ;
struct priv {int frame_size; int frame_rate; } ;
struct demuxer {int duration; struct priv* priv; struct stream* stream; } ;
typedef int int64_t ;


 int stream_get_size (struct stream*) ;

__attribute__((used)) static int generic_open(struct demuxer *demuxer)
{
    struct stream *s = demuxer->stream;
    struct priv *p = demuxer->priv;

    int64_t end = stream_get_size(s);
    if (end >= 0)
        demuxer->duration = (end / p->frame_size) / p->frame_rate;

    return 0;
}
