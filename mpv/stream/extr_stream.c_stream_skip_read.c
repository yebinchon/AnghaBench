
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {unsigned int buf_end; unsigned int buf_cur; } ;
typedef scalar_t__ int64_t ;


 unsigned int MPMIN (scalar_t__,unsigned int) ;
 int stream_read_more (struct stream*,int) ;

__attribute__((used)) static bool stream_skip_read(struct stream *s, int64_t len)
{
    while (len > 0) {
        unsigned int left = s->buf_end - s->buf_cur;
        if (!left) {
            if (!stream_read_more(s, 1))
                return 0;
            continue;
        }
        unsigned skip = MPMIN(len, left);
        s->buf_cur += skip;
        len -= skip;
    }
    return 1;
}
