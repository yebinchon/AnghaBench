
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int read_pos; } ;
typedef TYPE_1__ MBuf ;



int
mbuf_rewind(MBuf *mbuf)
{
 mbuf->read_pos = mbuf->data;
 return 0;
}
