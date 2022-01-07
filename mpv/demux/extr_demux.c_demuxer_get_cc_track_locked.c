
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_stream {int default_track; TYPE_1__* ds; TYPE_2__* codec; } ;
struct TYPE_4__ {char* codec; } ;
struct TYPE_3__ {int ignore_eof; int in; struct sh_stream* cc; } ;


 int STREAM_SUB ;
 int demux_add_sh_stream_locked (int ,struct sh_stream*) ;
 struct sh_stream* demux_alloc_sh_stream (int ) ;

__attribute__((used)) static struct sh_stream *demuxer_get_cc_track_locked(struct sh_stream *stream)
{
    struct sh_stream *sh = stream->ds->cc;

    if (!sh) {
        sh = demux_alloc_sh_stream(STREAM_SUB);
        if (!sh)
            return ((void*)0);
        sh->codec->codec = "eia_608";
        sh->default_track = 1;
        stream->ds->cc = sh;
        demux_add_sh_stream_locked(stream->ds->in, sh);
        sh->ds->ignore_eof = 1;
    }

    return sh;
}
