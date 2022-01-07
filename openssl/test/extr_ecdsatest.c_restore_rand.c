
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_set_rand_method (int ) ;
 int TEST_true (int ) ;
 int old_rand ;

__attribute__((used)) static int restore_rand(void)
{
    if (!TEST_true(RAND_set_rand_method(old_rand)))
        return 0;
    return 1;
}
