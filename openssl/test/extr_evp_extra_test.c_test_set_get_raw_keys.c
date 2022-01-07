
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_set_get_raw_keys_int (int,int) ;

__attribute__((used)) static int test_set_get_raw_keys(int tst)
{
    return test_set_get_raw_keys_int(tst, 0)
           && test_set_get_raw_keys_int(tst, 1);
}
