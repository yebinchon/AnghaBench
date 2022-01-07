
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (scalar_t__) ;
 scalar_t__ g_bs ;

void
bs_exit(void)
{
  if (g_bs != 0)
  {
    free(g_bs);
  }
}
