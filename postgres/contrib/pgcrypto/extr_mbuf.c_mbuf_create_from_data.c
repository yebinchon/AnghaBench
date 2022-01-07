
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int no_write; int own_data; int * data; int * read_pos; int * data_end; int * buf_end; } ;
typedef TYPE_1__ MBuf ;


 TYPE_1__* px_alloc (int) ;

MBuf *
mbuf_create_from_data(uint8 *data, int len)
{
 MBuf *mbuf;

 mbuf = px_alloc(sizeof *mbuf);
 mbuf->data = (uint8 *) data;
 mbuf->buf_end = mbuf->data + len;
 mbuf->data_end = mbuf->data + len;
 mbuf->read_pos = mbuf->data;

 mbuf->no_write = 1;
 mbuf->own_data = 0;

 return mbuf;
}
