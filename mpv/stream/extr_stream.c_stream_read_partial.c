
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ buf_cur; scalar_t__ buf_end; int buffer_mask; } ;
typedef TYPE_1__ stream_t ;


 int assert (int) ;
 int ring_copy (TYPE_1__*,void*,int,scalar_t__) ;
 int stream_drop_buffers (TYPE_1__*) ;
 int stream_read_more (TYPE_1__*,int) ;
 int stream_read_unbuffered (TYPE_1__*,void*,int) ;

int stream_read_partial(stream_t *s, void *buf, int buf_size)
{
    assert(s->buf_cur <= s->buf_end);
    assert(buf_size >= 0);
    if (s->buf_cur == s->buf_end && buf_size > 0) {
        if (buf_size > (s->buffer_mask + 1) / 2) {

            stream_drop_buffers(s);
            return stream_read_unbuffered(s, buf, buf_size);
        }
        stream_read_more(s, 1);
    }
    int res = ring_copy(s, buf, buf_size, s->buf_cur);
    s->buf_cur += res;
    return res;
}
