
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sleep (int) ;
 int washere ;

__attribute__((used)) static void * func(void * arg)
{
  washere = 1;

  Sleep(1000);

  return 0;
}
