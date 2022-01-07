
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;


 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int TEST_info (char*) ;
 struct tm* localtime (scalar_t__*) ;
 int tbl_compare_testdata ;
 int tbl_testdata_neg ;
 int tbl_testdata_neg_64bit ;
 int tbl_testdata_pos ;
 int tbl_testdata_pos_64bit ;
 int test_table_compare ;
 int test_table_neg ;
 int test_table_neg_64bit ;
 int test_table_pos ;
 int test_table_pos_64bit ;

int setup_tests(void)
{
    time_t t = -1;





    struct tm *ptm = localtime(&t);

    ADD_ALL_TESTS(test_table_pos, OSSL_NELEM(tbl_testdata_pos));
    if (!(t > 0) && ptm != ((void*)0)) {
        TEST_info("Adding negative-sign time_t tests");
        ADD_ALL_TESTS(test_table_neg, OSSL_NELEM(tbl_testdata_neg));
    }
    if (sizeof(time_t) > sizeof(uint32_t)) {
        TEST_info("Adding 64-bit time_t tests");
        ADD_ALL_TESTS(test_table_pos_64bit, OSSL_NELEM(tbl_testdata_pos_64bit));

        if (!(t > 0) && ptm != ((void*)0)) {
            TEST_info("Adding negative-sign 64-bit time_t tests");
            ADD_ALL_TESTS(test_table_neg_64bit, OSSL_NELEM(tbl_testdata_neg_64bit));
        }

    }
    ADD_ALL_TESTS(test_table_compare, OSSL_NELEM(tbl_compare_testdata));
    return 1;
}
