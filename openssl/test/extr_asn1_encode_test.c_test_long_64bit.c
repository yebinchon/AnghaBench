
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int long_test_package_64bit ;
 int test_intern (int *) ;

__attribute__((used)) static int test_long_64bit(void)
{
    return test_intern(&long_test_package_64bit);
}
