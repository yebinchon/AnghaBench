
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int OSSL_CMP_TRANSACTIONID_LENGTH ;
 int RAND_bytes (int ,int ) ;
 int rand_data ;
 int test_HDR_generalInfo_push0_item ;
 int test_HDR_generalInfo_push1_items ;
 int test_HDR_get0_senderNonce ;
 int test_HDR_init ;
 int test_HDR_init_no_ref_no_subject ;
 int test_HDR_init_with_subject ;
 int test_HDR_push0_freeText ;
 int test_HDR_push1_freeText ;
 int test_HDR_set1_recipient ;
 int test_HDR_set1_sender ;
 int test_HDR_set1_senderKID ;
 int test_HDR_set_and_check_implicit_confirm ;
 int test_HDR_set_get_pvno ;
 int test_HDR_update_messageTime ;

int setup_tests(void)
{
    RAND_bytes(rand_data, OSSL_CMP_TRANSACTIONID_LENGTH);

    ADD_TEST(test_HDR_set_get_pvno);
    ADD_TEST(test_HDR_get0_senderNonce);
    ADD_TEST(test_HDR_set1_sender);
    ADD_TEST(test_HDR_set1_recipient);
    ADD_TEST(test_HDR_update_messageTime);
    ADD_TEST(test_HDR_set1_senderKID);
    ADD_TEST(test_HDR_push0_freeText);

    ADD_TEST(test_HDR_push1_freeText);
    ADD_TEST(test_HDR_generalInfo_push0_item);
    ADD_TEST(test_HDR_generalInfo_push1_items);
    ADD_TEST(test_HDR_set_and_check_implicit_confirm);



    ADD_TEST(test_HDR_init);
    ADD_TEST(test_HDR_init_with_subject);
    ADD_TEST(test_HDR_init_no_ref_no_subject);



    return 1;
}
