
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;


 int test_output_memory (char*,unsigned char const*,int) ;
 int test_output_string (char*,char const*,int) ;

__attribute__((used)) static int test_output(void)
{
    const char s[] = "1234567890123456789012345678901234567890123456789012"
                     "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    test_output_string("test", s, sizeof(s) - 1);
    test_output_memory("test", (const unsigned char *)s, sizeof(s));
    return 1;
}
