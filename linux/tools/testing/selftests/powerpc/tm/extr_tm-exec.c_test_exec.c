
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_IF (int) ;
 int execl (int ,char*,char*,int *) ;
 int have_htm () ;
 int path ;
 int perror (char*) ;

__attribute__((used)) static int test_exec(void)
{
 SKIP_IF(!have_htm());

 asm __volatile__(
  "tbegin.;"
  "blt    1f; "
  "tsuspend.;"
  "1: ;"
  : : : "memory");

 execl(path, "tm-exec", "--child", ((void*)0));


 perror("execl() failed");
 return 1;
}
