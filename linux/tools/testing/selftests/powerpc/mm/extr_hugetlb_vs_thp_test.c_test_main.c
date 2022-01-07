
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_body () ;

__attribute__((used)) static int test_main(void)
{
 int i;


 for (i = 0; i < 10000; i++)
  if (test_body())
   return 1;

 return 0;
}
