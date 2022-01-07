
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_printf_stderr (char*,char const*) ;

__attribute__((used)) static void test_diff_header(const char *left, const char *right)
{
    test_printf_stderr("--- %s\n", left);
    test_printf_stderr("+++ %s\n", right);
}
