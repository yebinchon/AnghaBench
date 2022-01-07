
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;

__attribute__((noinline)) int read_ptr(int *ptr)
{



 barrier();
 return *ptr;
}
