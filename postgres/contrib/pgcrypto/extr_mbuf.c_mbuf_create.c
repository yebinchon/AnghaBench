
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int no_write; int own_data; void* data; void* read_pos; void* data_end; void* buf_end; } ;
typedef TYPE_1__ MBuf ;


 void* px_alloc (int) ;

MBuf *
mbuf_create(int len)
{
 MBuf *mbuf;

 if (!len)
  len = 8192;

 mbuf = px_alloc(sizeof *mbuf);
 mbuf->data = px_alloc(len);
 mbuf->buf_end = mbuf->data + len;
 mbuf->data_end = mbuf->data;
 mbuf->read_pos = mbuf->data;

 mbuf->no_write = 0;
 mbuf->own_data = 1;

 return mbuf;
}
