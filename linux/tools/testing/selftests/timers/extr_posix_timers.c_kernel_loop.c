
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int brk (void*) ;
 int done ;
 void* sbrk (int ) ;

__attribute__((used)) static void kernel_loop(void)
{
 void *addr = sbrk(0);
 int err = 0;

 while (!done && !err) {
  err = brk(addr + 4096);
  err |= brk(addr);
 }
}
