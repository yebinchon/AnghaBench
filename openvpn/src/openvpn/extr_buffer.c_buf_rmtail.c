
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct buffer {int len; } ;


 char* BLAST (struct buffer*) ;

void
buf_rmtail(struct buffer *buf, uint8_t remove)
{
    uint8_t *cp = BLAST(buf);
    if (cp && *cp == remove)
    {
        *cp = '\0';
        --buf->len;
    }
}
