
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t OSSL_NELEM (int *) ;
 int test_select_32 (int ,int ) ;
 int * test_values_32 ;

__attribute__((used)) static int test_32values(int i)
{
    uint32_t e = test_values_32[i];
    size_t j;
    int ret = 1;

    for (j = 0; j < OSSL_NELEM(test_values_32); j++) {
        uint32_t f = test_values_32[j];

        if (!test_select_32(e, f))
            ret = 0;
    }
    return ret;
}
