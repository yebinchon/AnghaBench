
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_fail_memory_common (char const*,char const*,int,char const*,char const*,char const*,char const*,unsigned char const*,size_t,unsigned char const*,size_t) ;
 int test_printf_stderr (char*) ;

void test_fail_memory_message(const char *prefix, const char *file,
                              int line, const char *type,
                              const char *left, const char *right,
                              const char *op,
                              const unsigned char *m1, size_t l1,
                              const unsigned char *m2, size_t l2)
{
    test_fail_memory_common(prefix, file, line, type, left, right, op,
                            m1, l1, m2, l2);
    test_printf_stderr("\n");
}
