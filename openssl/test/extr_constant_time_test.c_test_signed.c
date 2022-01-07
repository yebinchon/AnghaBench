
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int OSSL_NELEM (int*) ;
 int* signed_test_values ;
 int test_eq_int (int,int) ;
 int test_eq_int_8 (int,int) ;
 int test_select_int (int,int) ;

__attribute__((used)) static int test_signed(int i)
{
    int c = signed_test_values[i];
    unsigned int j;
    int ret = 1;

    for (j = 0; j < OSSL_NELEM(signed_test_values); ++j) {
        int d = signed_test_values[j];

        if (!test_select_int(c, d)
                || !test_eq_int(c, d)
                || !test_eq_int_8(c, d))
            ret = 0;
    }
    return ret;
}
