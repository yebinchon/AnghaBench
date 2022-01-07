
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compare_testdata {int result; int t2; int t1; } ;


 int ASN1_TIME_compare (int *,int *) ;
 int TEST_int_eq (int ,int ) ;
 struct compare_testdata* tbl_compare_testdata ;

__attribute__((used)) static int test_table_compare(int idx)
{
    struct compare_testdata *td = &tbl_compare_testdata[idx];

    return TEST_int_eq(ASN1_TIME_compare(&td->t1, &td->t2), td->result);
}
