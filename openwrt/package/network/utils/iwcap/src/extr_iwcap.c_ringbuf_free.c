
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf {int buf; } ;


 int free (int ) ;
 int memset (struct ringbuf*,int ,int) ;

void ringbuf_free(struct ringbuf *r)
{
 free(r->buf);
 memset(r, 0, sizeof(*r));
}
