
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int len; } ;


 int buf_advance (struct buffer*,int) ;
 int buf_copy (struct buffer*,struct buffer*) ;

__attribute__((used)) static inline bool
buf_copy_excess(struct buffer *dest,
                struct buffer *src,
                int len)
{
    if (len < 0)
    {
        return 0;
    }
    if (src->len > len)
    {
        struct buffer b = *src;
        src->len = len;
        if (!buf_advance(&b, len))
        {
            return 0;
        }
        return buf_copy(dest, &b);
    }
    else
    {
        return 1;
    }
}
