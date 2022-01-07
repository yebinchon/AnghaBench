
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int TEST_PASS ;
 int assert (int) ;
 int safe_strtoull (char*,int*) ;

__attribute__((used)) static enum test_return test_safe_strtoull(void) {
    uint64_t val;
    assert(safe_strtoull("123", &val));
    assert(val == 123);
    assert(safe_strtoull("+123", &val));
    assert(val == 123);
    assert(!safe_strtoull("", &val));
    assert(!safe_strtoull("123BOGUS", &val));
    assert(!safe_strtoull("92837498237498237498029383", &val));
    assert(!safe_strtoull(" issue221", &val));


    assert(safe_strtoull("18446744073709551615", &val));
    assert(val == 18446744073709551615ULL);
    assert(!safe_strtoull("18446744073709551616", &val));
    assert(!safe_strtoull("-1", &val));
    return TEST_PASS;
}
