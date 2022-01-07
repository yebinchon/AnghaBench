
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int TEST_PASS ;
 int assert (int) ;
 int safe_strtoul (char*,int*) ;

__attribute__((used)) static enum test_return test_safe_strtoul(void) {
    uint32_t val;
    assert(safe_strtoul("123", &val));
    assert(val == 123);
    assert(safe_strtoul("+123", &val));
    assert(val == 123);
    assert(!safe_strtoul("", &val));
    assert(!safe_strtoul("123BOGUS", &val));
    assert(!safe_strtoul(" issue221", &val));





    assert(safe_strtoul("4294967295", &val));
    assert(val == 4294967295L);



    assert(!safe_strtoul("-1", &val));
    return TEST_PASS;
}
