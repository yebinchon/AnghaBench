
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_fail_memory_common (char*,int *,int ,int *,int *,int *,char const*,unsigned char const*,size_t,unsigned char const*,size_t) ;

void test_output_memory(const char *name, const unsigned char *m, size_t l)
{
    test_fail_memory_common("memory", ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), name,
                            m, l, m, l);
}
