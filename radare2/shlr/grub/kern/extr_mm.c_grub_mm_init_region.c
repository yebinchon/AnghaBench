
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int grub_size_t ;
typedef TYPE_1__* grub_mm_region_t ;
typedef TYPE_2__* grub_mm_header_t ;
struct TYPE_5__ {int size; int magic; struct TYPE_5__* next; } ;
struct TYPE_4__ {long addr; int size; struct TYPE_4__* next; TYPE_2__* first; } ;


 scalar_t__ ALIGN_UP (long,int) ;
 int GRUB_MM_ALIGN ;
 int GRUB_MM_ALIGN_LOG2 ;
 int GRUB_MM_FREE_MAGIC ;
 TYPE_1__* base ;
 int grub_printf (char*,void*,void*) ;

void
grub_mm_init_region (void *addr, grub_size_t size)
{
  grub_mm_header_t h;
  grub_mm_region_t r, *p, q;






  r = (grub_mm_region_t) ALIGN_UP ((long) addr, GRUB_MM_ALIGN);
  size -= (char *) r - (char *) addr + sizeof (*r);


  if (size < GRUB_MM_ALIGN)
    return;

  h = (grub_mm_header_t) ((char *) r + GRUB_MM_ALIGN);
  h->next = h;
  h->magic = GRUB_MM_FREE_MAGIC;
  h->size = (size >> GRUB_MM_ALIGN_LOG2);

  r->first = h;
  r->addr = (long) h;
  r->size = (h->size << GRUB_MM_ALIGN_LOG2);



  for (p = &base, q = *p; q; p = &(q->next), q = *p)
    if (q->size > r->size)
      break;

  *p = r;
  r->next = q;
}
