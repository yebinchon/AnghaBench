
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * png_voidp ;
typedef int png_const_structrp ;
typedef size_t png_alloc_size_t ;


 size_t PNG_SIZE_MAX ;
 int * png_malloc_base (int ,size_t) ;

__attribute__((used)) static png_voidp
png_malloc_array_checked(png_const_structrp png_ptr, int nelements,
    size_t element_size)
{
   png_alloc_size_t req = (png_alloc_size_t)nelements;

   if (req <= PNG_SIZE_MAX/element_size)
      return png_malloc_base(png_ptr, req * element_size);


   return ((void*)0);
}
