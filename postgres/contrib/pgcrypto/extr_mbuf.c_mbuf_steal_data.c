
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int no_write; int own_data; int * buf_end; int * read_pos; int * data_end; int * data; } ;
typedef TYPE_1__ MBuf ;


 int mbuf_size (TYPE_1__*) ;

int
mbuf_steal_data(MBuf *mbuf, uint8 **data_p)
{
 int len = mbuf_size(mbuf);

 mbuf->no_write = 1;
 mbuf->own_data = 0;

 *data_p = mbuf->data;

 mbuf->data = mbuf->data_end = mbuf->read_pos = mbuf->buf_end = ((void*)0);

 return len;
}
