
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OK ;
 scalar_t__ SKIP ;
 scalar_t__ cur_test_outcome ;

void
tinytest_set_test_skipped_(void)
{
 if (cur_test_outcome==OK)
  cur_test_outcome = SKIP;
}
