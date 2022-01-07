
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct user_desc {int limit; scalar_t__ seg_32bit; scalar_t__ entry_number; scalar_t__ limit_in_pages; } ;
typedef int desc ;


 int ENOSYS ;
 int SYS_modify_ldt ;
 int SYS_set_thread_area ;
 int check_valid_segment (scalar_t__,int,int,int,int) ;
 int errno ;
 scalar_t__ gdt_entry_num ;
 int nerrs ;
 int printf (char*,...) ;
 int syscall (int ,...) ;

__attribute__((used)) static bool install_valid_mode(const struct user_desc *d, uint32_t ar,
          bool oldmode, bool ldt)
{
 struct user_desc desc = *d;
 int ret;

 if (!ldt) {


  return 0;

  if (!gdt_entry_num)
   return 0;
  desc.entry_number = gdt_entry_num;

  ret = syscall(SYS_set_thread_area, &desc);
 } else {
  ret = syscall(SYS_modify_ldt, oldmode ? 1 : 0x11,
         &desc, sizeof(desc));

  if (ret < -1)
   errno = -ret;

  if (ret != 0 && errno == ENOSYS) {
   printf("[OK]\tmodify_ldt returned -ENOSYS\n");
   return 0;
  }
 }

 if (ret == 0) {
  uint32_t limit = desc.limit;
  if (desc.limit_in_pages)
   limit = (limit << 12) + 4095;
  check_valid_segment(desc.entry_number, ldt, ar, limit, 1);
  return 1;
 } else {
  if (desc.seg_32bit) {
   printf("[FAIL]\tUnexpected %s failure %d\n",
          ldt ? "modify_ldt" : "set_thread_area",
          errno);
   nerrs++;
   return 0;
  } else {
   printf("[OK]\t%s rejected 16 bit segment\n",
          ldt ? "modify_ldt" : "set_thread_area");
   return 0;
  }
 }
}
