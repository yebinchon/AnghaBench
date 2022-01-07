
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int OSSL_CMP_TRANSACTIONID_LENGTH ;
 int RAND_bytes (int ,int ) ;
 int rand_data ;
 int test_ASN1_OCTET_STRING_set ;
 int test_ASN1_OCTET_STRING_set_tgt_is_src ;
 int test_cmp_asn1_get_int ;

int setup_tests(void)
{
    RAND_bytes(rand_data, OSSL_CMP_TRANSACTIONID_LENGTH);

    ADD_TEST(test_cmp_asn1_get_int);
    ADD_TEST(test_ASN1_OCTET_STRING_set);
    ADD_TEST(test_ASN1_OCTET_STRING_set_tgt_is_src);



    return 1;
}
