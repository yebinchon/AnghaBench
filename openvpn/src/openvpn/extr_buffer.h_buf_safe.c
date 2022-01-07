
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ offset; scalar_t__ len; scalar_t__ capacity; } ;


 scalar_t__ buf_size_valid (int) ;
 scalar_t__ buf_valid (struct buffer const*) ;

__attribute__((used)) static inline bool
buf_safe(const struct buffer *buf, int len)
{
    return buf_valid(buf) && buf_size_valid(len)
           && buf->offset + buf->len + len <= buf->capacity;
}
