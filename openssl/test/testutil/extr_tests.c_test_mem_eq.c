
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (void const*,void const*,size_t) ;
 int test_fail_memory_message (int *,char const*,int,char*,char const*,char const*,char*,void const*,size_t,void const*,size_t) ;

int test_mem_eq(const char *file, int line, const char *st1, const char *st2,
                const void *s1, size_t n1, const void *s2, size_t n2)
{
    if (s1 == ((void*)0) && s2 == ((void*)0))
        return 1;
    if (n1 != n2 || s1 == ((void*)0) || s2 == ((void*)0) || memcmp(s1, s2, n1) != 0) {
        test_fail_memory_message(((void*)0), file, line, "memory", st1, st2, "==",
                                 s1, n1, s2, n2);
        return 0;
    }
    return 1;
}
