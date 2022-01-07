
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {scalar_t__ descr; } ;


 struct test* all_tests ;
 int test_finish (scalar_t__,int) ;
 int test_one (struct test*) ;

__attribute__((used)) static int test_vphn(void)
{
 static struct test *test;

 for (test = all_tests; test->descr; test++) {
  int ret;

  ret = test_one(test);
  test_finish(test->descr, ret);
  if (ret)
   return ret;
 }

 return 0;
}
