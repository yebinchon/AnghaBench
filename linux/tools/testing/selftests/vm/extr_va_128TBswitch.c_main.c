
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int hugetlb_testcases ;
 int run_test (int ,int ) ;
 int strcmp (char*,char*) ;
 int supported_arch () ;
 int testcases ;

int main(int argc, char **argv)
{
 int ret;

 if (!supported_arch())
  return 0;

 ret = run_test(testcases, ARRAY_SIZE(testcases));
 if (argc == 2 && !strcmp(argv[1], "--run-hugetlb"))
  ret = run_test(hugetlb_testcases, ARRAY_SIZE(hugetlb_testcases));
 return ret;
}
