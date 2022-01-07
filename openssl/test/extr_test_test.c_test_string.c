
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int,int ) ;
 int TEST_str_eq (char*,char*) ;
 int TEST_str_ne (char*,char*) ;

__attribute__((used)) static int test_string(void)
{
    static char buf[] = "abc";

    if (!TEST(1, TEST_str_eq(((void*)0), ((void*)0)))
        | !TEST(1, TEST_str_eq("abc", buf))
        | !TEST(0, TEST_str_eq("abc", ((void*)0)))
        | !TEST(0, TEST_str_eq("abc", ""))
        | !TEST(0, TEST_str_eq(((void*)0), buf))
        | !TEST(0, TEST_str_ne(((void*)0), ((void*)0)))
        | !TEST(0, TEST_str_eq("", ((void*)0)))
        | !TEST(0, TEST_str_eq(((void*)0), ""))
        | !TEST(0, TEST_str_ne("", ""))
        | !TEST(0, TEST_str_eq("\1\2\3\4\5", "\1x\3\6\5"))
        | !TEST(0, TEST_str_ne("abc", buf))
        | !TEST(1, TEST_str_ne("abc", ((void*)0)))
        | !TEST(1, TEST_str_ne(((void*)0), buf))
        | !TEST(0, TEST_str_eq("abcdef", "abcdefghijk")))
        goto err;
    return 1;

err:
    return 0;
}
