
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_write (struct buffer*,char const*,int const) ;
 int buf_write_u16 (struct buffer*,int const) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
write_string(struct buffer *buf, const char *str, const int maxlen)
{
    const int len = strlen(str) + 1;
    if (len < 1 || (maxlen >= 0 && len > maxlen))
    {
        return 0;
    }
    if (!buf_write_u16(buf, len))
    {
        return 0;
    }
    if (!buf_write(buf, str, len))
    {
        return 0;
    }
    return 1;
}
