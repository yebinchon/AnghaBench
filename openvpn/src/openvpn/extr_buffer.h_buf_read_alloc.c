
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int len; int offset; } ;


 int * BPTR (struct buffer*) ;

__attribute__((used)) static inline uint8_t *
buf_read_alloc(struct buffer *buf, int size)
{
    uint8_t *ret;
    if (size < 0 || buf->len < size)
    {
        return ((void*)0);
    }
    ret = BPTR(buf);
    buf->offset += size;
    buf->len -= size;
    return ret;
}
