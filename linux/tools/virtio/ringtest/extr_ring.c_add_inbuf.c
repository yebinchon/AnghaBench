
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* data; void* buf; } ;
struct TYPE_5__ {int avail_idx; int num_free; } ;
struct TYPE_4__ {unsigned long addr; unsigned int len; unsigned int index; int flags; } ;


 int DESC_HW ;
 int barrier () ;
 TYPE_3__* data ;
 TYPE_2__ guest ;
 TYPE_1__* ring ;
 int ring_size ;
 int smp_release () ;

int add_inbuf(unsigned len, void *buf, void *datap)
{
 unsigned head, index;

 if (!guest.num_free)
  return -1;

 guest.num_free--;
 head = (ring_size - 1) & (guest.avail_idx++);




 ring[head].addr = (unsigned long)(void*)buf;
 ring[head].len = len;





 barrier();
 index = ring[head].index;
 data[index].buf = buf;
 data[index].data = datap;

 smp_release();
 ring[head].flags = DESC_HW;

 return 0;
}
