
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIGNUM ;


 scalar_t__ BN_OUTPUT_SIZE ;
 int BN_bn2bin (int const*,unsigned char*) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 scalar_t__ BN_num_bytes (int const*) ;
 int hex_convert_memory (unsigned char*,int,char*,scalar_t__) ;
 int test_bignum_zero_null (int const*) ;
 int test_fail_bignum_common (char*,int *,int ,int *,int *,int *,char const*,int const*,int const*) ;
 int test_printf_stderr (char*,char const*,char*,...) ;

void test_output_bignum(const char *name, const BIGNUM *bn)
{
    if (bn == ((void*)0) || BN_is_zero(bn)) {
        test_printf_stderr("bignum: '%s' = %s\n", name,
                           test_bignum_zero_null(bn));
    } else if (BN_num_bytes(bn) <= BN_OUTPUT_SIZE) {
        unsigned char buf[BN_OUTPUT_SIZE];
        char out[2 * sizeof(buf) + 1];
        char *p = out;
        int n = BN_bn2bin(bn, buf);

        hex_convert_memory(buf, n, p, BN_OUTPUT_SIZE);
        while (*p == '0' && *++p != '\0')
            ;
        test_printf_stderr("bignum: '%s' = %s0x%s\n", name,
                           BN_is_negative(bn) ? "-" : "", p);
    } else {
        test_fail_bignum_common("bignum", ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), name,
                                bn, bn);
    }
}
