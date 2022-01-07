
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int longjmp (int ,int) ;
 int printf (char*) ;
 int setjmp_env ;

__attribute__((used)) static void sigill_handler(int signal)
{
 printf("Took sigill\n");
 longjmp(setjmp_env, 1);
}
