
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int ,int ) ;
 int TEST_mem_eq (char const*,int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int test_memory_overflow(void)
{

    const char *p = "1234567890123456789012345678901234567890123456789012";
    const char *q = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    return TEST(0, TEST_mem_eq(p, strlen(p), q, strlen(q)));
}
