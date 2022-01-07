
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int int64_test_package ;
 int test_intern (int *) ;

__attribute__((used)) static int test_int64(void)
{
    return test_intern(&int64_test_package);
}
