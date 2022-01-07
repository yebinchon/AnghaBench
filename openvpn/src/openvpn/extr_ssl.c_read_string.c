
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_read (struct buffer*,char*,int const) ;
 int buf_read_u16 (struct buffer*) ;

__attribute__((used)) static bool
read_string(struct buffer *buf, char *str, const unsigned int capacity)
{
    const int len = buf_read_u16(buf);
    if (len < 1 || len > (int)capacity)
    {
        return 0;
    }
    if (!buf_read(buf, str, len))
    {
        return 0;
    }
    str[len-1] = '\0';
    return 1;
}
