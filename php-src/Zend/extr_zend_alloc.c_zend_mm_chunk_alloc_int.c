
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_HUGEPAGE ;
 size_t REAL_PAGE_SIZE ;
 size_t ZEND_MM_ALIGNED_OFFSET (void*,size_t) ;
 int madvise (void*,size_t,int ) ;
 void* zend_mm_mmap (size_t) ;
 void* zend_mm_mmap_fixed (void*,size_t) ;
 int zend_mm_munmap (char*,size_t) ;
 scalar_t__ zend_mm_use_huge_pages ;

__attribute__((used)) static void *zend_mm_chunk_alloc_int(size_t size, size_t alignment)
{
 void *ptr = zend_mm_mmap(size);

 if (ptr == ((void*)0)) {
  return ((void*)0);
 } else if (ZEND_MM_ALIGNED_OFFSET(ptr, alignment) == 0) {





  return ptr;
 } else {
  size_t offset;


  zend_mm_munmap(ptr, size);
  ptr = zend_mm_mmap(size + alignment - REAL_PAGE_SIZE);
  offset = ZEND_MM_ALIGNED_OFFSET(ptr, alignment);
  if (offset != 0) {
   offset = alignment - offset;
   zend_mm_munmap(ptr, offset);
   ptr = (char*)ptr + offset;
   alignment -= offset;
  }
  if (alignment > REAL_PAGE_SIZE) {
   zend_mm_munmap((char*)ptr + size, alignment - REAL_PAGE_SIZE);
  }






  return ptr;
 }
}
