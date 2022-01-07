
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_open_args {int flags; char const* url; struct mp_cancel* cancel; struct mpv_global* global; } ;
struct stream {int dummy; } ;
struct mpv_global {int dummy; } ;
struct mp_cancel {int dummy; } ;


 int stream_create_with_args (struct stream_open_args*,struct stream**) ;

struct stream *stream_create(const char *url, int flags,
                             struct mp_cancel *c, struct mpv_global *global)
{
    struct stream_open_args args = {
        .global = global,
        .cancel = c,
        .flags = flags,
        .url = url,
    };
    struct stream *s;
    stream_create_with_args(&args, &s);
    return s;
}
