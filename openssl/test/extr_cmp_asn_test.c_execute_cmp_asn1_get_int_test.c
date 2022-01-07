
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMP_ASN_TEST_FIXTURE ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int) ;
 int TEST_int_eq (int,int ) ;
 int ossl_cmp_asn1_get_int (int *) ;

__attribute__((used)) static int execute_cmp_asn1_get_int_test(CMP_ASN_TEST_FIXTURE *
                                                   fixture)
{
    ASN1_INTEGER *asn1integer = ASN1_INTEGER_new();
    ASN1_INTEGER_set(asn1integer, 77);
    if (!TEST_int_eq(77, ossl_cmp_asn1_get_int(asn1integer)))
        return 0;
    ASN1_INTEGER_free(asn1integer);
    return 1;
}
