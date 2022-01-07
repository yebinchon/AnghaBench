
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANON ;
 void* MAP_FAILED ;
 int MAP_HUGETLB ;
 int MAP_PRIVATE ;
 int MEM_COMMIT ;
 int MEM_RESERVE ;
 int PAGE_READWRITE ;
 int PROT_READ ;
 int PROT_WRITE ;
 void* VirtualAlloc (int *,size_t,int,int ) ;
 size_t ZEND_MM_CHUNK_SIZE ;
 int ZEND_MM_FD ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 void* mmap (int *,size_t,int,int,int,int ) ;
 int stderr ;
 int stderr_last_error (char*) ;
 char* strerror (int) ;
 scalar_t__ zend_mm_use_huge_pages ;

__attribute__((used)) static void *zend_mm_mmap(size_t size)
{
 void *ptr;
 ptr = mmap(((void*)0), size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, ZEND_MM_FD, 0);

 if (ptr == MAP_FAILED) {



  return ((void*)0);
 }
 return ptr;

}
