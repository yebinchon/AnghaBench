
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int capacity; int offset; scalar_t__ len; int * data; } ;



__attribute__((used)) static inline bool
buf_init_dowork(struct buffer *buf, int offset)
{
    if (offset < 0 || offset > buf->capacity || buf->data == ((void*)0))
    {
        return 0;
    }
    buf->len = 0;
    buf->offset = offset;
    return 1;
}
