
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {scalar_t__ seg_32bit; int entry_number; } ;


 int ENOSYS ;
 int SYS_modify_ldt ;
 int check_invalid_segment (int ,int) ;
 int errno ;
 int nerrs ;
 int printf (char*,...) ;
 int syscall (int ,int,struct user_desc const*,int) ;

__attribute__((used)) static void install_invalid(const struct user_desc *desc, bool oldmode)
{
 int ret = syscall(SYS_modify_ldt, oldmode ? 1 : 0x11,
     desc, sizeof(*desc));
 if (ret < -1)
  errno = -ret;
 if (ret == 0) {
  check_invalid_segment(desc->entry_number, 1);
 } else if (errno == ENOSYS) {
  printf("[OK]\tmodify_ldt returned -ENOSYS\n");
 } else {
  if (desc->seg_32bit) {
   printf("[FAIL]\tUnexpected modify_ldt failure %d\n",
          errno);
   nerrs++;
  } else {
   printf("[OK]\tmodify_ldt rejected 16 bit segment\n");
  }
 }
}
