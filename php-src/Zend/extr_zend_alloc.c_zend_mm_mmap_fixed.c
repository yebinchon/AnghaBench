
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANON ;
 int MAP_EXCL ;
 void* MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int MEM_COMMIT ;
 int MEM_RESERVE ;
 int PAGE_READWRITE ;
 int PROT_READ ;
 int PROT_WRITE ;
 void* VirtualAlloc (void*,size_t,int,int ) ;
 int ZEND_MM_FD ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 void* mmap (void*,size_t,int,int,int ,int ) ;
 scalar_t__ munmap (void*,size_t) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void *zend_mm_mmap_fixed(void *addr, size_t size)
{



 int flags = MAP_PRIVATE | MAP_ANON;




 void *ptr = mmap(addr, size, PROT_READ | PROT_WRITE, flags , ZEND_MM_FD, 0);

 if (ptr == MAP_FAILED) {



  return ((void*)0);
 } else if (ptr != addr) {
  if (munmap(ptr, size) != 0) {



  }
  return ((void*)0);
 }
 return ptr;

}
