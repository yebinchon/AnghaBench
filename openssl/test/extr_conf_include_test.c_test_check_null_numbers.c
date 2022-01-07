
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NCONF_get_number (int *,char*,char*,long*) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_long_eq (long,int) ;
 int TEST_note (char*) ;
 int TEST_true (int ) ;
 int setenv (char*,char*,int) ;
 int unsetenv (char*) ;

__attribute__((used)) static int test_check_null_numbers(void)
{
    return 1;
}
