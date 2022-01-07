
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int len; int offset; } ;


 int buf_valid (struct buffer*) ;

__attribute__((used)) static inline bool
buf_advance(struct buffer *buf, int size)
{
    if (!buf_valid(buf) || size < 0 || buf->len < size)
    {
        return 0;
    }
    buf->offset += size;
    buf->len -= size;
    return 1;
}
