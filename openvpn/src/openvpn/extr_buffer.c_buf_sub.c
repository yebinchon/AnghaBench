
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int capacity; int * data; } ;


 int CLEAR (struct buffer) ;
 int * buf_prepend (struct buffer*,int) ;
 int * buf_write_alloc (struct buffer*,int) ;

struct buffer
buf_sub(struct buffer *buf, int size, bool prepend)
{
    struct buffer ret;
    uint8_t *data;

    CLEAR(ret);
    data = prepend ? buf_prepend(buf, size) : buf_write_alloc(buf, size);
    if (data)
    {
        ret.capacity = size;
        ret.data = data;
    }
    return ret;
}
