
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int ASN1_TIME ;


 int * ASN1_TIME_adj (int *,int ,int,int ) ;
 int ASN1_TIME_free (int *) ;
 int TEST_int_eq (int,int) ;
 int X509_cmp_time (int *,int *) ;
 int time (int *) ;

__attribute__((used)) static int test_x509_cmp_time_current(void)
{
    time_t now = time(((void*)0));

    ASN1_TIME *asn1_before = ((void*)0), *asn1_after = ((void*)0);
    int cmp_result, failed = 0;

    asn1_before = ASN1_TIME_adj(((void*)0), now, -1, 0);
    asn1_after = ASN1_TIME_adj(((void*)0), now, 1, 0);

    cmp_result = X509_cmp_time(asn1_before, ((void*)0));
    if (!TEST_int_eq(cmp_result, -1))
        failed = 1;

    cmp_result = X509_cmp_time(asn1_after, ((void*)0));
    if (!TEST_int_eq(cmp_result, 1))
        failed = 1;

    ASN1_TIME_free(asn1_before);
    ASN1_TIME_free(asn1_after);

    return failed == 0;
}
