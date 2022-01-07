
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int X32_BIT ;
 scalar_t__ errno ;
 int fflush (int ) ;
 scalar_t__ nerrs ;
 int printf (char*) ;
 int stdout ;
 scalar_t__ syscall (int,int ,int ,int ,int ,int ,int ) ;
 int test_x32_without_x32_bit () ;

int main()
{




 printf("\tChecking for x32...");
 fflush(stdout);
 if (syscall(39 | X32_BIT, 0, 0, 0, 0, 0, 0) >= 0) {
  printf(" supported\n");
 } else if (errno == ENOSYS) {
  printf(" not supported\n");
 } else {
  printf(" confused\n");
 }

 test_x32_without_x32_bit();

 return nerrs ? 1 : 0;
}
