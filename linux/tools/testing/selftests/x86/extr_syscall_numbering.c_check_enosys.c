
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int printf (char*,unsigned long,...) ;
 int stdout ;
 long syscall (unsigned long,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void check_enosys(unsigned long nr, bool *ok)
{

 fflush(stdout);

 long ret = syscall(nr, 0, 0, 0, 0, 0, 0);
 if (ret == 0) {
  printf("[FAIL]\tsyscall %lu succeeded, but it should have failed\n", nr);
  *ok = 0;
 } else if (errno != ENOSYS) {
  printf("[FAIL]\tsyscall %lu had error code %d, but it should have reported ENOSYS\n", nr, errno);
  *ok = 0;
 }
}
