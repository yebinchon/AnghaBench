
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 scalar_t__ BLAST (struct buffer*) ;
 int CC_CRLF ;
 int CC_NULL ;
 int buf_inc_len (struct buffer*,int) ;
 int buf_null_terminate (struct buffer*) ;
 scalar_t__ char_class (char,int) ;

void
buf_chomp(struct buffer *buf)
{
    while (1)
    {
        char *last = (char *) BLAST(buf);
        if (!last)
        {
            break;
        }
        if (char_class(*last, CC_CRLF|CC_NULL))
        {
            if (!buf_inc_len(buf, -1))
            {
                break;
            }
        }
        else
        {
            break;
        }
    }
    buf_null_terminate(buf);
}
