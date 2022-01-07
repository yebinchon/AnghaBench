
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int entry_number; } ;


 unsigned short LDT3 (int ) ;
 int SYS_modify_ldt ;
 int printf (char*,char const*) ;
 scalar_t__ syscall (int ,int,struct user_desc const*,int) ;

__attribute__((used)) static void add_ldt(const struct user_desc *desc, unsigned short *var,
      const char *name)
{
 if (syscall(SYS_modify_ldt, 1, desc, sizeof(*desc)) == 0) {
  *var = LDT3(desc->entry_number);
 } else {
  printf("[NOTE]\tFailed to create %s segment\n", name);
  *var = 0;
 }
}
