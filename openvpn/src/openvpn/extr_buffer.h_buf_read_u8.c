
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 int* BPTR (struct buffer*) ;
 int buf_advance (struct buffer*,int) ;

__attribute__((used)) static inline int
buf_read_u8(struct buffer *buf)
{
    int ret;
    if (BLEN(buf) < 1)
    {
        return -1;
    }
    ret = *BPTR(buf);
    buf_advance(buf, 1);
    return ret;
}
