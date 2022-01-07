
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum which_base { ____Placeholder_which_base } which_base ;


 int FS ;
 int ULONG_MAX ;
 int abort () ;
 unsigned long segv_addr ;
 int want_segv ;

__attribute__((used)) static unsigned long read_base(enum which_base which)
{
 unsigned long offset;





 want_segv = 1;

 offset = 0;
 if (which == FS) {

  asm volatile ("mov %%fs:(%%rcx), %%rax" : : "c" (offset) : "rax");
 } else {
  asm volatile ("mov %%gs:(%%rcx), %%rax" : : "c" (offset) : "rax");
 }
 if (!want_segv)
  return segv_addr + offset;







 offset = (ULONG_MAX >> 1) + 1;
 if (which == FS) {
  asm volatile ("mov %%fs:(%%rcx), %%rax"
         : : "c" (offset) : "rax");
 } else {
  asm volatile ("mov %%gs:(%%rcx), %%rax"
         : : "c" (offset) : "rax");
 }
 if (!want_segv)
  return segv_addr + offset;

 abort();
}
