
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int TEST_PASS ;
 int assert (int) ;
 int safe_strtoll (char*,int*) ;

__attribute__((used)) static enum test_return test_safe_strtoll(void) {
    int64_t val;
    assert(safe_strtoll("123", &val));
    assert(val == 123);
    assert(safe_strtoll("+123", &val));
    assert(val == 123);
    assert(safe_strtoll("-123", &val));
    assert(val == -123);
    assert(!safe_strtoll("", &val));
    assert(!safe_strtoll("123BOGUS", &val));
    assert(!safe_strtoll("92837498237498237498029383", &val));
    assert(!safe_strtoll(" issue221", &val));


    assert(!safe_strtoll("18446744073709551615", &val));
    assert(safe_strtoll("9223372036854775807", &val));
    assert(val == 9223372036854775807LL);




    assert(!safe_strtoll("-9223372036854775809", &val));


    assert(safe_strtoll(" 123 foo", &val));
    assert(val == 123);
    return TEST_PASS;
}
