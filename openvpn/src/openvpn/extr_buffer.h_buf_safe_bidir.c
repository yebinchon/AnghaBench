
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int len; scalar_t__ offset; scalar_t__ capacity; } ;


 scalar_t__ buf_size_valid_signed (int) ;
 scalar_t__ buf_valid (struct buffer const*) ;

__attribute__((used)) static inline bool
buf_safe_bidir(const struct buffer *buf, int len)
{
    if (buf_valid(buf) && buf_size_valid_signed(len))
    {
        const int newlen = buf->len + len;
        return newlen >= 0 && buf->offset + newlen <= buf->capacity;
    }
    else
    {
        return 0;
    }
}
