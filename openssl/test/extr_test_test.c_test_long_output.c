
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int ,int ) ;
 int TEST_mem_eq (char const*,int ,char const*,int ) ;
 int TEST_str_eq (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int test_long_output(void)
{
    const char *p = "1234567890123456789012345678901234567890123456789012";
    const char *q = "1234567890klmnopqrs01234567890EFGHIJKLM0123456789XYZ";
    const char *r = "1234567890123456789012345678901234567890123456789012"
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY+"
                    "12345678901234567890123ABC78901234567890123456789012";
    const char *s = "1234567890123456789012345678901234567890123456789012"
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY-"
                    "1234567890123456789012345678901234567890123456789012"
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    return TEST(0, TEST_str_eq(p, q))
           & TEST(0, TEST_str_eq(q, r))
           & TEST(0, TEST_str_eq(r, s))
           & TEST(0, TEST_mem_eq(r, strlen(r), s, strlen(s)));
}
