
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int entry_number; int base_addr; int limit; int seg_32bit; int limit_in_pages; int useable; int seg_not_present; int read_exec_only; int contents; } ;
typedef int desc ;


 int ARCH_SET_GS ;
 int MAP_32BIT ;
 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SYS_arch_prctl ;
 int SYS_modify_ldt ;
 int err (int,char*) ;
 int memcpy (struct user_desc*,struct user_desc*,int) ;
 struct user_desc* mmap (int *,int,int,int,int,int ) ;
 int munmap (struct user_desc*,int) ;
 int printf (char*,...) ;
 int set_thread_area_entry_number ;
 scalar_t__ syscall (int ,int,struct user_desc*,...) ;

__attribute__((used)) static unsigned short load_gs(void)
{






 if (syscall(SYS_arch_prctl, ARCH_SET_GS, 0) != 0)
  err(1, "ARCH_SET_GS");


 struct user_desc desc = {
  .entry_number = 0,
  .base_addr = 0xBAADF00D,
  .limit = 0xfffff,
  .seg_32bit = 1,
  .contents = 0,
  .read_exec_only = 0,
  .limit_in_pages = 1,
  .seg_not_present = 0,
  .useable = 0
 };
 if (syscall(SYS_modify_ldt, 1, &desc, sizeof(desc)) == 0) {
  printf("\tusing LDT slot 0\n");
  asm volatile ("mov %0, %%gs" : : "rm" ((unsigned short)0x7));
  return 0x7;
 } else {


  struct user_desc *low_desc = mmap(
   ((void*)0), sizeof(desc),
   PROT_READ | PROT_WRITE,
   MAP_PRIVATE | MAP_ANONYMOUS | MAP_32BIT, -1, 0);
  memcpy(low_desc, &desc, sizeof(desc));

  low_desc->entry_number = set_thread_area_entry_number;


  long ret;
  asm volatile ("int $0x80"
         : "=a" (ret) : "a" (243), "b" (low_desc)
         : "r8", "r9", "r10", "r11");
  memcpy(&desc, low_desc, sizeof(desc));
  munmap(low_desc, sizeof(desc));

  if (ret != 0) {
   printf("[NOTE]\tcould not create a segment -- test won't do anything\n");
   return 0;
  }
  printf("\tusing GDT slot %d\n", desc.entry_number);
  set_thread_area_entry_number = desc.entry_number;

  unsigned short gs = (unsigned short)((desc.entry_number << 3) | 0x3);
  asm volatile ("mov %0, %%gs" : : "rm" (gs));
  return gs;
 }
}
