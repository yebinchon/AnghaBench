
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct desc {int index; } ;
struct TYPE_4__ {int kicked_avail_idx; int num_free; scalar_t__ last_used_idx; scalar_t__ avail_idx; } ;
struct TYPE_3__ {int called_used_idx; scalar_t__ used_idx; } ;


 void* calloc (int,int) ;
 void* data ;
 void* event ;
 int exit (int) ;
 TYPE_2__ guest ;
 TYPE_1__ host ;
 int perror (char*) ;
 int posix_memalign (void**,int,int) ;
 struct desc* ring ;
 int ring_size ;

void alloc_ring(void)
{
 int ret;
 int i;

 ret = posix_memalign((void **)&ring, 0x1000, ring_size * sizeof *ring);
 if (ret) {
  perror("Unable to allocate ring buffer.\n");
  exit(3);
 }
 event = calloc(1, sizeof(*event));
 if (!event) {
  perror("Unable to allocate event buffer.\n");
  exit(3);
 }
 guest.avail_idx = 0;
 guest.kicked_avail_idx = -1;
 guest.last_used_idx = 0;
 host.used_idx = 0;
 host.called_used_idx = -1;
 for (i = 0; i < ring_size; ++i) {
  struct desc desc = {
   .index = i,
  };
  ring[i] = desc;
 }
 guest.num_free = ring_size;
 data = calloc(ring_size, sizeof(*data));
 if (!data) {
  perror("Unable to allocate data buffer.\n");
  exit(3);
 }
}
