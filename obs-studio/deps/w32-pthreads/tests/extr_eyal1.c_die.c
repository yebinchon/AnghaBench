
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int free (int *) ;
 int * tcs ;

__attribute__((used)) static void
die (int ret)
{
  if (((void*)0) != tcs)
    {
      free (tcs);
      tcs = ((void*)0);
    }

  if (ret)
    exit (ret);
}
