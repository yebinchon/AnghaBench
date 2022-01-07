
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int no_write; int * read_pos; } ;
typedef TYPE_1__ MBuf ;


 int mbuf_avail (TYPE_1__*) ;

int
mbuf_grab(MBuf *mbuf, int len, uint8 **data_p)
{
 if (len > mbuf_avail(mbuf))
  len = mbuf_avail(mbuf);

 mbuf->no_write = 1;

 *data_p = mbuf->read_pos;
 mbuf->read_pos += len;
 return len;
}
