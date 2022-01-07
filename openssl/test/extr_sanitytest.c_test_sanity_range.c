
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INT_MAX ;
 scalar_t__ SIZE_MAX ;
 int TEST_error (char*) ;

__attribute__((used)) static int test_sanity_range(void)
{

    if (SIZE_MAX < INT_MAX) {
        TEST_error("int must not be wider than size_t");
        return 0;
    }
    return 1;
}
