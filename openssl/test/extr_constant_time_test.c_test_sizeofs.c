
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_NELEM (int ) ;
 int TEST_uint_eq (int ,int ) ;
 int test_values ;
 int test_values_s ;

__attribute__((used)) static int test_sizeofs(void)
{
    if (!TEST_uint_eq(OSSL_NELEM(test_values), OSSL_NELEM(test_values_s)))
        return 0;
    return 1;
}
