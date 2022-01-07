
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ data; } ;


 int CLEAR (struct buffer) ;
 int free (scalar_t__) ;

void
free_buf(struct buffer *buf)
{
    if (buf->data)
    {
        free(buf->data);
    }
    CLEAR(*buf);
}
