
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 scalar_t__ BLAST (struct buffer*) ;
 int buf_inc_len (struct buffer*,int) ;
 int buf_safe (struct buffer*,int) ;
 int buf_write_u8 (struct buffer*,int ) ;

void
buf_null_terminate(struct buffer *buf)
{
    char *last = (char *) BLAST(buf);
    if (last && *last == '\0')
    {
        return;
    }

    if (!buf_safe(buf, 1))
    {
        buf_inc_len(buf, -1);
    }

    buf_write_u8(buf, 0);
}
