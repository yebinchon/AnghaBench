
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int TEST (int,int ) ;
 int TEST_mem_eq (char*,int,char*,int) ;
 int TEST_mem_ne (char*,int ,char*,int ) ;

__attribute__((used)) static int test_memory(void)
{
    static char buf[] = "xyz";

    if (!TEST(1, TEST_mem_eq(((void*)0), 0, ((void*)0), 0))
        | !TEST(1, TEST_mem_eq(((void*)0), 1, ((void*)0), 2))
        | !TEST(0, TEST_mem_eq(((void*)0), 0, "xyz", 3))
        | !TEST(0, TEST_mem_eq(((void*)0), 7, "abc", 3))
        | !TEST(0, TEST_mem_ne(((void*)0), 0, ((void*)0), 0))
        | !TEST(0, TEST_mem_eq(((void*)0), 0, "", 0))
        | !TEST(0, TEST_mem_eq("", 0, ((void*)0), 0))
        | !TEST(0, TEST_mem_ne("", 0, "", 0))
        | !TEST(0, TEST_mem_eq("xyz", 3, ((void*)0), 0))
        | !TEST(0, TEST_mem_eq("xyz", 3, buf, sizeof(buf)))
        | !TEST(1, TEST_mem_eq("xyz", 4, buf, sizeof(buf))))
        goto err;
    return 1;

err:
    return 0;
}
