
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_fail_string_common (char*,int *,int ,int *,int *,int *,char const*,char const*,size_t,char const*,size_t) ;

void test_output_string(const char *name, const char *m, size_t l)
{
    test_fail_string_common("string", ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), name,
                            m, l, m, l);
}
