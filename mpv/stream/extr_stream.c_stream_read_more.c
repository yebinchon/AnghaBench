
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {int buf_end; int buf_cur; int requested_buffer_size; int buf_start; int buffer_mask; scalar_t__ eof; int * buffer; } ;


 int MPMAX (int,int) ;
 int MPMIN (int,int) ;
 int assert (int) ;
 int stream_read_unbuffered (struct stream*,int *,int) ;
 int stream_resize_buffer (struct stream*,int) ;

__attribute__((used)) static bool stream_read_more(struct stream *s, int forward)
{
    assert(forward >= 0);

    int forward_avail = s->buf_end - s->buf_cur;
    if (forward_avail >= forward)
        return 0;


    forward = MPMAX(forward, s->requested_buffer_size / 2);


    int buf_old = MPMIN(s->buf_cur - s->buf_start, s->requested_buffer_size / 2);

    if (!stream_resize_buffer(s, buf_old + forward))
        return 0;

    int buf_alloc = s->buffer_mask + 1;

    assert(s->buf_start <= s->buf_cur);
    assert(s->buf_cur <= s->buf_end);
    assert(s->buf_cur < buf_alloc * 2);
    assert(s->buf_end < buf_alloc * 2);
    assert(s->buf_start < buf_alloc);




    int read = buf_alloc - buf_old - forward_avail;

    int pos = s->buf_end & s->buffer_mask;
    read = MPMIN(read, buf_alloc - pos);




    read = stream_read_unbuffered(s, &s->buffer[pos], read);

    s->buf_end += read;


    if (s->buf_end - s->buf_start >= buf_alloc) {
        assert(s->buf_end >= buf_alloc);

        s->buf_start = s->buf_end - buf_alloc;

        assert(s->buf_start <= s->buf_cur);
        assert(s->buf_cur <= s->buf_end);

        if (s->buf_start >= buf_alloc) {
            s->buf_start -= buf_alloc;
            s->buf_cur -= buf_alloc;
            s->buf_end -= buf_alloc;
        }
    }


    assert(s->buf_cur - s->buf_start >= buf_old);

    if (s->buf_cur < s->buf_end)
        s->eof = 0;

    return !!read;
}
