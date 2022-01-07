
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* test_exp_output ;
 unsigned int test_exp_output_len ;
 int test_failed ;
 unsigned int test_rem_output_len ;

void upytest_set_expected_output(const char *output, unsigned len) {
    test_exp_output = output;
    test_exp_output_len = test_rem_output_len = len;
    test_failed = 0;
}
