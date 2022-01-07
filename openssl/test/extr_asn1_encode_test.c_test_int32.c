
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int int32_test_package ;
 int test_intern (int *) ;

__attribute__((used)) static int test_int32(void)
{
    return test_intern(&int32_test_package);
}
