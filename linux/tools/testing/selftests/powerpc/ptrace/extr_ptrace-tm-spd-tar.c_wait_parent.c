
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* cptr ;

__attribute__((used)) void wait_parent(void)
{
 cptr[2] = 1;
 while (!cptr[1])
  asm volatile("" : : : "memory");
}
