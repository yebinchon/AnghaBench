
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_READ ;
 int PROT_WRITE ;
 int corruption_found ;
 int getpagesize () ;
 void* malloc (size_t) ;
 void* map1 ;
 void* map2 ;
 int memcpy (void*,void*,size_t) ;
 int mprotect (void*,size_t,int) ;
 int segv_wait ;
 int timeout ;
 int usleep (int) ;

__attribute__((used)) static void *mem_snapshot_fn(void *arg)
{
 int page_size = getpagesize();
 size_t size = page_size;
 void *tmp = malloc(size);

 while (!corruption_found && !timeout) {

  segv_wait = 1;

  mprotect(map1, size, PROT_READ);





  memcpy(tmp, map1, size);







  memcpy(map2, tmp, size);




  asm volatile("sync" ::: "memory");
  mprotect(map1, size, PROT_READ|PROT_WRITE);
  asm volatile("sync" ::: "memory");
  segv_wait = 0;

  usleep(1);
 }

 return 0;
}
