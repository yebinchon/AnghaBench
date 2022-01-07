
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expected; int src_string; int tgt_string; } ;
typedef TYPE_1__ CMP_ASN_TEST_FIXTURE ;


 int ASN1_OCTET_STRING_cmp (int ,int ) ;
 int TEST_int_eq (scalar_t__,int ) ;
 int ossl_cmp_asn1_octet_string_set1 (int *,int ) ;

__attribute__((used)) static int execute_CMP_ASN1_OCTET_STRING_set1_test(CMP_ASN_TEST_FIXTURE *
                                                   fixture)
{
    if (!TEST_int_eq(fixture->expected,
                     ossl_cmp_asn1_octet_string_set1(&fixture->tgt_string,
                                                     fixture->src_string)))
        return 0;
    if (fixture->expected != 0)
        return TEST_int_eq(0, ASN1_OCTET_STRING_cmp(fixture->tgt_string,
                                                    fixture->src_string));
    return 1;
}
