
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ offset; scalar_t__ len; } ;



__attribute__((used)) static inline void
buf_reset_len(struct buffer *buf)
{
    buf->len = 0;
    buf->offset = 0;
}
