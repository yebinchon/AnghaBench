
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int gs_image_file_t ;


 int UNUSED_PARAMETER (int *) ;
 void* bzalloc (size_t) ;

__attribute__((used)) static inline void *alloc_mem(gs_image_file_t *image, uint64_t *mem_usage,
         size_t size)
{
 UNUSED_PARAMETER(image);

 if (mem_usage)
  *mem_usage += size;
 return bzalloc(size);
}
