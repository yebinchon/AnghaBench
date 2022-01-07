
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int) ;
 int res ;

void* runner(void* args)
{
  int cc;
  for ( cc = 0; cc < 10; cc ++ )
    {
    printf("%d CC: %d\n", (int)args, cc);
    }
  res ++;
  return 0;
}
