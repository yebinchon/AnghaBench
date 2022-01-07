
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_fail_message (int *,char const*,int,char*,char const*,char*,char*,char*,void const*) ;

int test_ptr(const char *file, int line, const char *s, const void *p)
{
    if (p != ((void*)0))
        return 1;
    test_fail_message(((void*)0), file, line, "ptr", s, "NULL", "!=", "%p", p);
    return 0;
}
