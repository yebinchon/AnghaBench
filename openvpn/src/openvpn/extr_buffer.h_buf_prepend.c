
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int offset; int len; } ;


 int * BPTR (struct buffer*) ;
 int buf_valid (struct buffer*) ;

__attribute__((used)) static inline uint8_t *
buf_prepend(struct buffer *buf, int size)
{
    if (!buf_valid(buf) || size < 0 || size > buf->offset)
    {
        return ((void*)0);
    }
    buf->offset -= size;
    buf->len += size;
    return BPTR(buf);
}
