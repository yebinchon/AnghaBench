
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X32_BIT ;
 int check_enosys (int,int*) ;
 int nerrs ;
 int printf (char*) ;

__attribute__((used)) static void test_x32_without_x32_bit(void)
{
 bool ok = 1;






 printf("[RUN]\tChecking syscalls 512-547\n");
 for (int i = 512; i <= 547; i++)
  check_enosys(i, &ok);





 printf("[RUN]\tChecking some 64-bit syscalls in x32 range\n");
 check_enosys(16 | X32_BIT, &ok);
 check_enosys(19 | X32_BIT, &ok);
 check_enosys(20 | X32_BIT, &ok);




 printf("[RUN]\tChecking numbers above 2^32-1\n");
 check_enosys((1UL << 32), &ok);
 check_enosys(X32_BIT | (1UL << 32), &ok);

 if (!ok)
  nerrs++;
 else
  printf("[OK]\tThey all returned -ENOSYS\n");
}
