
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_string_equal (char*,char*) ;
 int print_calculated_number (char*,double) ;

__attribute__((used)) static void test_number_pinting(void **state)
{
    (void)state;

    char value[50];

    print_calculated_number(value, 0);
    assert_string_equal(value, "0");

    print_calculated_number(value, 0.0000001);
    assert_string_equal(value, "0.0000001");

    print_calculated_number(value, 0.00000009);
    assert_string_equal(value, "0.0000001");

    print_calculated_number(value, 0.000000001);
    assert_string_equal(value, "0");

    print_calculated_number(value, 99.99999999999999999);
    assert_string_equal(value, "100");

    print_calculated_number(value, -99.99999999999999999);
    assert_string_equal(value, "-100");

    print_calculated_number(value, 123.4567890123456789);
    assert_string_equal(value, "123.456789");

    print_calculated_number(value, 9999.9999999);
    assert_string_equal(value, "9999.9999999");

    print_calculated_number(value, -9999.9999999);
    assert_string_equal(value, "-9999.9999999");
}
