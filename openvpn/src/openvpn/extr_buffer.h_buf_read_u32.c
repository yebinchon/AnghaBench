
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct buffer {int dummy; } ;


 int buf_read (struct buffer*,int *,int) ;
 int ntohl (int ) ;

__attribute__((used)) static inline uint32_t
buf_read_u32(struct buffer *buf, bool *good)
{
    uint32_t ret;
    if (!buf_read(buf, &ret, sizeof(uint32_t)))
    {
        if (good)
        {
            *good = 0;
        }
        return 0;
    }
    else
    {
        if (good)
        {
            *good = 1;
        }
        return ntohl(ret);
    }
}
