
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct buffer {int dummy; } ;


 int buf_read (struct buffer*,int *,int) ;
 int ntohs (int ) ;

__attribute__((used)) static inline int
buf_read_u16(struct buffer *buf)
{
    uint16_t ret;
    if (!buf_read(buf, &ret, sizeof(uint16_t)))
    {
        return -1;
    }
    return ntohs(ret);
}
