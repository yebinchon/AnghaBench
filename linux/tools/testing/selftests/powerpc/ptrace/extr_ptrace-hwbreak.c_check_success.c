
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SIGTRAP ;
 scalar_t__ WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int printf (char*,char const*,char const*) ;
 int wait (int*) ;

__attribute__((used)) static void check_success(const char *msg)
{
 const char *msg2;
 int status;


 wait(&status);

 msg2 = "Failed";

 if (WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP) {
  msg2 = "Child process hit the breakpoint";
 }

 printf("%s Result: [%s]\n", msg, msg2);
}
