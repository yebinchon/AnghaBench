
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;
 int _ (char*) ;
 int memory_exhausted (int ) ;

__attribute__((used)) static size_t
size_product(size_t nitems, size_t itemsize)
{
 if (SIZE_MAX / itemsize < nitems)
  memory_exhausted(_("size overflow"));
 return nitems * itemsize;
}
