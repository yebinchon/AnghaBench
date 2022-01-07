
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_false (int ) ;
 int assert_true (int ) ;
 int strprefix (char*,char*) ;

__attribute__((used)) static void
test_buffer_strprefix(void **state)
{
    assert_true(strprefix("123456", "123456"));
    assert_true(strprefix("123456", "123"));
    assert_true(strprefix("123456", ""));
    assert_false(strprefix("123456", "456"));
    assert_false(strprefix("12", "123"));
}
