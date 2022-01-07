
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int printf (char*,unsigned long) ;
 int raise (int ) ;
 unsigned long rip ;

__attribute__((used)) static void test_sigreturn_to(unsigned long ip)
{
 rip = ip;
 printf("[RUN]\tsigreturn to 0x%lx\n", ip);
 raise(SIGUSR1);
}
