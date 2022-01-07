
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int PTRDIFF_MAX ;
 int SIZE_MAX ;
 int WORK_AROUND_QTBUG_53071 ;
 int _ (char*) ;
 void* erealloc (void*,int ) ;
 int memory_exhausted (int ) ;
 int size_product (int,size_t) ;

__attribute__((used)) static void *
growalloc(void *ptr, size_t itemsize, ptrdiff_t nitems, ptrdiff_t *nitems_alloc)
{
 if (nitems < *nitems_alloc)
  return ptr;
 else
 {
  ptrdiff_t nitems_max = PTRDIFF_MAX - WORK_AROUND_QTBUG_53071;
  ptrdiff_t amax = nitems_max < SIZE_MAX ? nitems_max : SIZE_MAX;

  if ((amax - 1) / 3 * 2 < *nitems_alloc)
   memory_exhausted(_("integer overflow"));
  *nitems_alloc += (*nitems_alloc >> 1) + 1;
  return erealloc(ptr, size_product(*nitems_alloc, itemsize));
 }
}
