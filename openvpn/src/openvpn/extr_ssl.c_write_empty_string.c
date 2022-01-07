
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_write_u16 (struct buffer*,int ) ;

__attribute__((used)) static bool
write_empty_string(struct buffer *buf)
{
    if (!buf_write_u16(buf, 0))
    {
        return 0;
    }
    return 1;
}
