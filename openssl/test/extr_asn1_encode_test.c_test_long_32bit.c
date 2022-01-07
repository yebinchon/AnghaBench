
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int long_test_package_32bit ;
 int test_intern (int *) ;

__attribute__((used)) static int test_long_32bit(void)
{
    return test_intern(&long_test_package_32bit);
}
