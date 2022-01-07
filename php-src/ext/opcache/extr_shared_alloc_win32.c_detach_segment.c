
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_shared_segment ;


 int CloseHandle (int *) ;
 int UnmapViewOfFile (int *) ;
 int * mapping_base ;
 int * memfile ;
 int * memory_mutex ;
 int zend_shared_alloc_lock_win32 () ;
 int zend_shared_alloc_unlock_win32 () ;

__attribute__((used)) static int detach_segment(zend_shared_segment *shared_segment)
{
 zend_shared_alloc_lock_win32();
 if (mapping_base) {
  UnmapViewOfFile(mapping_base);
  mapping_base = ((void*)0);
 }
 CloseHandle(memfile);
 memfile = ((void*)0);
 zend_shared_alloc_unlock_win32();
 CloseHandle(memory_mutex);
 memory_mutex = ((void*)0);
 return 0;
}
