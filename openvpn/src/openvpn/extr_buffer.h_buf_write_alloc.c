
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int len; } ;


 int * BPTR (struct buffer*) ;
 int buf_safe (struct buffer*,int) ;

__attribute__((used)) static inline uint8_t *
buf_write_alloc(struct buffer *buf, int size)
{
    uint8_t *ret;
    if (!buf_safe(buf, size))
    {
        return ((void*)0);
    }
    ret = BPTR(buf) + buf->len;
    buf->len += size;
    return ret;
}
