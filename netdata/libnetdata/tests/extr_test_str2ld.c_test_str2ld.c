
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG_DOUBLE ;


 double abs (scalar_t__) ;
 int assert_false (int) ;
 int assert_ptr_equal (char*,char*) ;
 int assert_true (scalar_t__) ;
 scalar_t__ isinf (scalar_t__) ;
 scalar_t__ isnan (scalar_t__) ;
 scalar_t__ str2ld (char*,char**) ;
 scalar_t__ strtold (char*,char**) ;

__attribute__((used)) static void test_str2ld(void **state)
{
    (void)state;
    char *values[] = {
        "1.2345678",
        "-35.6",
        "0.00123",
        "23842384234234.2",
        ".1",
        "1.2e-10",
        "hello",
        "1wrong",
        "nan",
        "inf",
        ((void*)0)
    };

    for (int i = 0; values[i]; i++) {
        char *e_mine = "hello", *e_sys = "world";
        LONG_DOUBLE mine = str2ld(values[i], &e_mine);
        LONG_DOUBLE sys = strtold(values[i], &e_sys);

        if (isnan(mine))
            assert_true(isnan(sys));
        else if (isinf(mine))
            assert_true(isinf(sys));
        else if (mine != sys)
            assert_false(abs(mine - sys) > 0.000001);

        assert_ptr_equal(e_mine, e_sys);
    }
}
