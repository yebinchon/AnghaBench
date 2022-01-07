
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_intern (int *) ;
 int uint64_test_package ;

__attribute__((used)) static int test_uint64(void)
{
    return test_intern(&uint64_test_package);
}
