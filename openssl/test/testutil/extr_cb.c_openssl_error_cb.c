
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_printf_stderr (char*,char const*) ;

int openssl_error_cb(const char *str, size_t len, void *u)
{
    return test_printf_stderr("%s", str);
}
