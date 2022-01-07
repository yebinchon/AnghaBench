
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_uint_t ;


 int memcmp (char const*,char const*,scalar_t__) ;
 int mp_hal_stdout_tx_strn_cooked (char const*,scalar_t__) ;
 int printf (char*,int,char const,char const) ;
 char const* test_exp_output ;
 scalar_t__ test_exp_output_len ;
 int test_failed ;
 scalar_t__ test_rem_output_len ;

void upytest_output(const char *str, mp_uint_t len) {
    if (!test_failed) {
        if (len > test_rem_output_len) {
            test_failed = 1;
        } else {
            test_failed = memcmp(test_exp_output, str, len);
            test_exp_output += len;
            test_rem_output_len -= len;
        }
    }
    mp_hal_stdout_tx_strn_cooked(str, len);
}
