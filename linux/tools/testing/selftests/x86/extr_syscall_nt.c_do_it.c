
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_getpid ;
 unsigned long get_eflags () ;
 int nerrs ;
 int printf (char*,...) ;
 int set_eflags (unsigned long) ;
 int syscall (int ) ;

__attribute__((used)) static void do_it(unsigned long extraflags)
{
 unsigned long flags;

 set_eflags(get_eflags() | extraflags);
 syscall(SYS_getpid);
 flags = get_eflags();
 if ((flags & extraflags) == extraflags) {
  printf("[OK]\tThe syscall worked and flags are still set\n");
 } else {
  printf("[FAIL]\tThe syscall worked but flags were cleared (flags = 0x%lx but expected 0x%lx set)\n",
         flags, extraflags);
  nerrs++;
 }
}
