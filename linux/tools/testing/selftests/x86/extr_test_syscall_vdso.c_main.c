
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

int main(int argc, char **argv, char **envp)
{
 printf("[SKIP]\tNot a 32-bit x86 userspace\n");
 return 0;
}
