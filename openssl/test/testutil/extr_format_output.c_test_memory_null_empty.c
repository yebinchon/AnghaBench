
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_printf_stderr (char*,...) ;

__attribute__((used)) static void test_memory_null_empty(const unsigned char *m, char c)
{
    if (m == ((void*)0))
        test_printf_stderr("%4s %c%s\n", "", c, "NULL");
    else
        test_printf_stderr("%04x %c%s\n", 0u, c, "empty");
}
