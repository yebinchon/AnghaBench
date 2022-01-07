
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
is_empty_arg(char *arg)
{
 int ret = 1;
 if (arg != ((void*)0)) {
  if (*arg) ret = 0;
 };
 return ret;
}
