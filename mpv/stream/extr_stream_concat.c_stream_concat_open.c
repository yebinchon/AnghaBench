
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_open_args {char* url; int flags; struct priv* special_arg; int * sinfo; struct mp_cancel* cancel; struct mpv_global* global; } ;
struct stream {int dummy; } ;
struct priv {int num_streams; struct stream** streams; } ;
struct mpv_global {int dummy; } ;
struct mp_cancel {int dummy; } ;


 int STREAM_READ ;
 int STREAM_SILENT ;
 int stream_create_with_args (struct stream_open_args*,struct stream**) ;
 int stream_info_concat ;

struct stream *stream_concat_open(struct mpv_global *global, struct mp_cancel *c,
                                  struct stream **streams, int num_streams)
{

    struct priv arg = {
        .streams = streams,
        .num_streams = num_streams,
    };

    struct stream_open_args sargs = {
        .global = global,
        .cancel = c,
        .url = "concat://",
        .flags = STREAM_READ | STREAM_SILENT,
        .sinfo = &stream_info_concat,
        .special_arg = &arg,
    };

    struct stream *s = ((void*)0);
    stream_create_with_args(&sargs, &s);
    return s;
}
