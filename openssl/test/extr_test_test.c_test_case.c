
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,int) ;
 int stderr ;

__attribute__((used)) static int test_case(int expected, const char *test, int result)
{
    if (result != expected) {
        fprintf(stderr, "# FATAL: %s != %d\n", test, expected);
        return 0;
    }
    return 1;
}
