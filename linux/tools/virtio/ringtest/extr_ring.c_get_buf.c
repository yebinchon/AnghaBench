
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * data; int * buf; } ;
struct TYPE_5__ {int last_used_idx; int num_free; } ;
struct TYPE_4__ {int flags; unsigned int len; int index; } ;


 int DESC_HW ;
 TYPE_3__* data ;
 TYPE_2__ guest ;
 TYPE_1__* ring ;
 int ring_size ;
 int smp_acquire () ;

void *get_buf(unsigned *lenp, void **bufp)
{
 unsigned head = (ring_size - 1) & guest.last_used_idx;
 unsigned index;
 void *datap;

 if (ring[head].flags & DESC_HW)
  return ((void*)0);

 smp_acquire();
 *lenp = ring[head].len;
 index = ring[head].index & (ring_size - 1);
 datap = data[index].data;
 *bufp = data[index].buf;
 data[index].buf = ((void*)0);
 data[index].data = ((void*)0);
 guest.num_free++;
 guest.last_used_idx++;
 return datap;
}
