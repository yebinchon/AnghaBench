
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t N ;
 char** error_stack ;

char *error_get(void)
{
 if (N > 0)
 {
  return error_stack[--N];
 }
 else
 {
  return ((void*)0);
 }
}
