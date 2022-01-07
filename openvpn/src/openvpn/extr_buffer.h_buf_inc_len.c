
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int len; } ;


 int buf_safe_bidir (struct buffer*,int) ;

__attribute__((used)) static inline bool
buf_inc_len(struct buffer *buf, int inc)
{
    if (!buf_safe_bidir(buf, inc))
    {
        return 0;
    }
    buf->len += inc;
    return 1;
}
