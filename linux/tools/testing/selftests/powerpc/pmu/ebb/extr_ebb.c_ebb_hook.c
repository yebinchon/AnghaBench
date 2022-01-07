
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ebb_user_func () ;

void ebb_hook(void)
{
 if (ebb_user_func)
  ebb_user_func();
}
