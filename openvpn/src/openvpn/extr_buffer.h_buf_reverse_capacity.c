
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int offset; } ;


 scalar_t__ buf_valid (struct buffer const*) ;

__attribute__((used)) static inline int
buf_reverse_capacity(const struct buffer *buf)
{
    if (buf_valid(buf))
    {
        return buf->offset;
    }
    else
    {
        return 0;
    }
}
