
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 char* BPTR (struct buffer*) ;

void
convert_to_one_line(struct buffer *buf)
{
    uint8_t *cp = BPTR(buf);
    int len = BLEN(buf);
    while (len--)
    {
        if (*cp == '\n')
        {
            *cp = '|';
        }
        ++cp;
    }
}
