
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int grub_size_t ;
typedef TYPE_1__* grub_mm_region_t ;
struct TYPE_3__ {int first; struct TYPE_3__* next; } ;


 int GRUB_ERR_OUT_OF_MEMORY ;
 int GRUB_MM_ALIGN ;
 int GRUB_MM_ALIGN_LOG2 ;
 TYPE_1__* base ;
 int grub_disk_cache_invalidate_all () ;
 int grub_error (int ,char*) ;
 void* grub_real_malloc (int *,int,int) ;

void *
grub_memalign (grub_size_t align, grub_size_t size)
{
  grub_mm_region_t r;
  grub_size_t n = ((size + GRUB_MM_ALIGN - 1) >> GRUB_MM_ALIGN_LOG2) + 1;
  int count = 0;

  align = (align >> GRUB_MM_ALIGN_LOG2);
  if (align == 0)
    align = 1;

 again:

  for (r = base; r; r = r->next)
    {
      void *p;

      p = grub_real_malloc (&(r->first), n, align);
      if (p)
 return p;
    }


  switch (count)
    {
    case 0:

      grub_disk_cache_invalidate_all ();
      count++;
      goto again;

    case 1:


      count++;
      goto again;

    default:
      break;
    }

  grub_error (GRUB_ERR_OUT_OF_MEMORY, "out of memory");
  return 0;
}
