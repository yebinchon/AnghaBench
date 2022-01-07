
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct buffer {int capacity; scalar_t__* data; scalar_t__ offset; scalar_t__ len; } ;


 int buf_size_error (int) ;
 int buf_size_valid (int) ;

__attribute__((used)) static inline void
buf_set_write(struct buffer *buf, uint8_t *data, int size)
{
    if (!buf_size_valid(size))
    {
        buf_size_error(size);
    }
    buf->len = 0;
    buf->offset = 0;
    buf->capacity = size;
    buf->data = data;
    if (size > 0 && data)
    {
        *data = 0;
    }
}
