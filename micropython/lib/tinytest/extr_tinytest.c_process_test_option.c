
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testgroup_t {int dummy; } ;


 int TT_ENABLED_ ;
 int TT_OFF_BY_DEFAULT ;
 int TT_SKIP ;
 int printf (char*,char const*) ;
 int process_test_alias (struct testgroup_t*,char const*) ;
 int tinytest_set_flag_ (struct testgroup_t*,char const*,int,int) ;

__attribute__((used)) static int
process_test_option(struct testgroup_t *groups, const char *test)
{
 int flag = TT_ENABLED_;
 int n = 0;
 if (test[0] == '@') {
  return process_test_alias(groups, test + 1);
 } else if (test[0] == ':') {
  ++test;
  flag = TT_SKIP;
 } else if (test[0] == '+') {
  ++test;
  ++n;
  if (!tinytest_set_flag_(groups, test, 0, TT_OFF_BY_DEFAULT)) {
   printf("No such test as %s!\n", test);
   return -1;
  }
 } else {
  ++n;
 }
 if (!tinytest_set_flag_(groups, test, 1, flag)) {
  printf("No such test as %s!\n", test);
  return -1;
 }
 return n;
}
