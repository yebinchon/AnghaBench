
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int dummy; } ;


 scalar_t__ ENOSYS ;
 scalar_t__ errno ;
 int nerrs ;
 int printf (char*,...) ;
 scalar_t__ safe_modify_ldt (int,struct user_desc*,int) ;

__attribute__((used)) static void fail_install(struct user_desc *desc)
{
 if (safe_modify_ldt(0x11, desc, sizeof(*desc)) == 0) {
  printf("[FAIL]\tmodify_ldt accepted a bad descriptor\n");
  nerrs++;
 } else if (errno == ENOSYS) {
  printf("[OK]\tmodify_ldt returned -ENOSYS\n");
 } else {
  printf("[OK]\tmodify_ldt failure %d\n", errno);
 }
}
