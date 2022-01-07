
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_read_u8 (struct buffer*) ;

int
buf_substring_len(const struct buffer *buf, int delim)
{
    int i = 0;
    struct buffer tmp = *buf;
    int c;

    while ((c = buf_read_u8(&tmp)) >= 0)
    {
        ++i;
        if (c == delim)
        {
            return i;
        }
    }
    return -1;
}
