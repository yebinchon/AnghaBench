
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int len; int capacity; int * data; scalar_t__ offset; } ;


 int buf_size_error (int) ;
 int buf_size_valid (int) ;

__attribute__((used)) static inline void
buf_set_read(struct buffer *buf, const uint8_t *data, int size)
{
    if (!buf_size_valid(size))
    {
        buf_size_error(size);
    }
    buf->len = buf->capacity = size;
    buf->offset = 0;
    buf->data = (uint8_t *)data;
}
