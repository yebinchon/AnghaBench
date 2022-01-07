
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int capacity; int offset; int len; } ;


 scalar_t__ buf_valid (struct buffer const*) ;

__attribute__((used)) static inline int
buf_forward_capacity(const struct buffer *buf)
{
    if (buf_valid(buf))
    {
        int ret = buf->capacity - (buf->offset + buf->len);
        if (ret < 0)
        {
            ret = 0;
        }
        return ret;
    }
    else
    {
        return 0;
    }
}
