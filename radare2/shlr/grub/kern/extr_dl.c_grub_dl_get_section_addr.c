
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_t ;
typedef TYPE_2__* grub_dl_segment_t ;
struct TYPE_5__ {unsigned int section; void* addr; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* segment; } ;



__attribute__((used)) static void *
grub_dl_get_section_addr (grub_dl_t mod, unsigned n)
{
  grub_dl_segment_t seg;

  for (seg = mod->segment; seg; seg = seg->next)
    if (seg->section == n)
      return seg->addr;

  return 0;
}
