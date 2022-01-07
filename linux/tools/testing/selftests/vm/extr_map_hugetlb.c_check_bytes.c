
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned int) ;

__attribute__((used)) static void check_bytes(char *addr)
{
 printf("First hex is %x\n", *((unsigned int *)addr));
}
