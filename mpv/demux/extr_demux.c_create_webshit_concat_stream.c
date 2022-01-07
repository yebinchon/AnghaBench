
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stream {int dummy; } ;
struct mpv_global {int dummy; } ;
struct mp_cancel {int dummy; } ;
struct TYPE_3__ {int len; int start; } ;
typedef TYPE_1__ bstr ;


 int assert (struct stream*) ;
 int free_stream (struct stream*) ;
 struct stream* stream_concat_open (struct mpv_global*,struct mp_cancel*,struct stream**,int) ;
 struct stream* stream_memory_open (struct mpv_global*,int ,int ) ;

__attribute__((used)) static struct stream *create_webshit_concat_stream(struct mpv_global *global,
                                                   struct mp_cancel *c,
                                                   bstr init, struct stream *real)
{
    struct stream *mem = stream_memory_open(global, init.start, init.len);
    assert(mem);

    struct stream *streams[2] = {mem, real};
    struct stream *concat = stream_concat_open(global, c, streams, 2);
    if (!concat) {
        free_stream(mem);
        free_stream(real);
    }
    return concat;
}
