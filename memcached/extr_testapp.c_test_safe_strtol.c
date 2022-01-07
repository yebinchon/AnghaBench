
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int TEST_PASS ;
 int assert (int) ;
 int safe_strtol (char*,int*) ;

__attribute__((used)) static enum test_return test_safe_strtol(void) {
    int32_t val;
    assert(safe_strtol("123", &val));
    assert(val == 123);
    assert(safe_strtol("+123", &val));
    assert(val == 123);
    assert(safe_strtol("-123", &val));
    assert(val == -123);
    assert(!safe_strtol("", &val));
    assert(!safe_strtol("123BOGUS", &val));
    assert(!safe_strtol("92837498237498237498029383", &val));
    assert(!safe_strtol(" issue221", &val));





    assert(safe_strtol("2147483647", &val));
    assert(val == 2147483647L);





    assert(safe_strtol(" 123 foo", &val));
    assert(val == 123);
    return TEST_PASS;
}
