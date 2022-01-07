
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int * data; scalar_t__ len; scalar_t__ offset; scalar_t__ capacity; } ;



__attribute__((used)) static inline void
buf_reset(struct buffer *buf)
{
    buf->capacity = 0;
    buf->offset = 0;
    buf->len = 0;
    buf->data = ((void*)0);
}
