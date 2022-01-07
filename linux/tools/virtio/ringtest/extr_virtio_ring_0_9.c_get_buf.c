
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int * data; } ;
struct TYPE_11__ {int last_used_idx; unsigned int free_head; int num_free; } ;
struct TYPE_10__ {TYPE_3__* desc; TYPE_2__* used; } ;
struct TYPE_9__ {unsigned int len; unsigned int next; scalar_t__ addr; } ;
struct TYPE_8__ {unsigned int idx; TYPE_1__* ring; } ;
struct TYPE_7__ {unsigned int id; unsigned int len; } ;


 TYPE_6__* data ;
 TYPE_5__ guest ;
 TYPE_4__ ring ;
 int ring_size ;
 int smp_acquire () ;

void *get_buf(unsigned *lenp, void **bufp)
{
 unsigned head;
 unsigned index;
 void *datap;
 if (ring.used->idx == guest.last_used_idx)
  return ((void*)0);

 smp_acquire();




 head = (ring_size - 1) & guest.last_used_idx;
 index = ring.used->ring[head].id;






 *lenp = ring.used->ring[head].len;

 datap = data[index].data;
 *bufp = (void*)(unsigned long)ring.desc[index].addr;
 data[index].data = ((void*)0);

 ring.desc[index].next = guest.free_head;
 guest.free_head = index;

 guest.num_free++;
 guest.last_used_idx++;
 return datap;
}
