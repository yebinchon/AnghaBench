
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_fail_message (int *,char const*,int,char*,char const*,char*,char*,char*) ;

int test_true(const char *file, int line, const char *s, int b)
{
    if (b)
        return 1;
    test_fail_message(((void*)0), file, line, "bool", s, "true", "==", "false");
    return 0;
}
