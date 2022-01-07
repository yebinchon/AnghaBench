
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vring_desc {unsigned long addr; unsigned int len; unsigned int next; int flags; } ;
struct TYPE_8__ {void* data; } ;
struct TYPE_7__ {unsigned int free_head; scalar_t__ avail_idx; int num_free; } ;
struct TYPE_6__ {TYPE_1__* avail; struct vring_desc* desc; } ;
struct TYPE_5__ {unsigned int* ring; scalar_t__ idx; } ;


 int VRING_DESC_F_NEXT ;
 TYPE_4__* data ;
 TYPE_3__ guest ;
 TYPE_2__ ring ;
 int ring_size ;
 int smp_release () ;

int add_inbuf(unsigned len, void *buf, void *datap)
{
 unsigned head;

 unsigned avail;

 struct vring_desc *desc;

 if (!guest.num_free)
  return -1;




 head = guest.free_head;

 guest.num_free--;

 desc = ring.desc;
 desc[head].flags = VRING_DESC_F_NEXT;
 desc[head].addr = (unsigned long)(void *)buf;
 desc[head].len = len;




 desc[head].flags &= ~VRING_DESC_F_NEXT;

 guest.free_head = desc[head].next;


 data[head].data = datap;
 smp_release();
 avail = (ring_size - 1) & (guest.avail_idx++);
 ring.avail->ring[avail] = head;


 smp_release();

 ring.avail->idx = guest.avail_idx;
 return 0;
}
