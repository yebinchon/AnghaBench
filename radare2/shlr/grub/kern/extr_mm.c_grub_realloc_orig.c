
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int grub_size_t ;
typedef int grub_mm_region_t ;
typedef TYPE_1__* grub_mm_header_t ;
struct TYPE_3__ {int size; } ;


 int GRUB_MM_ALIGN ;
 int GRUB_MM_ALIGN_LOG2 ;
 int get_header_from_pointer (void*,TYPE_1__**,int *) ;
 int grub_free (void*) ;
 void* grub_malloc (int) ;
 int grub_memcpy (void*,void*,int) ;

void *
grub_realloc_orig (void *ptr, grub_size_t size)
{
  grub_mm_header_t p;
  grub_mm_region_t r;
  void *q;
  grub_size_t n;

  if (! ptr)
    return grub_malloc (size);

  if (! size)
    {
      grub_free (ptr);
      return 0;
    }


  n = ((size + GRUB_MM_ALIGN - 1) >> GRUB_MM_ALIGN_LOG2) + 1;
  get_header_from_pointer (ptr, &p, &r);

  if (p->size >= n)
    return ptr;

  q = grub_malloc (size);
  if (! q)
    return q;

  grub_memcpy (q, ptr, size);
  grub_free (ptr);
  return q;
}
