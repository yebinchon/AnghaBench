
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bn_chars ;
 int test_printf_stderr (char*,scalar_t__,char*) ;

__attribute__((used)) static void test_bignum_header_line(void)
{
    test_printf_stderr(" %*s\n", bn_chars + 6, "bit position");
}
