
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ capacity; scalar_t__ offset; scalar_t__ len; int data; } ;


 int secure_memzero (int ,scalar_t__) ;

void
buf_clear(struct buffer *buf)
{
    if (buf->capacity > 0)
    {
        secure_memzero(buf->data, buf->capacity);
    }
    buf->len = 0;
    buf->offset = 0;
}
