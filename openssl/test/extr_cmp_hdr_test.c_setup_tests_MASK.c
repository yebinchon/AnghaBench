#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CMP_TRANSACTIONID_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rand_data ; 
 int /*<<< orphan*/  test_HDR_generalInfo_push0_item ; 
 int /*<<< orphan*/  test_HDR_generalInfo_push1_items ; 
 int /*<<< orphan*/  test_HDR_get0_senderNonce ; 
 int /*<<< orphan*/  test_HDR_init ; 
 int /*<<< orphan*/  test_HDR_init_no_ref_no_subject ; 
 int /*<<< orphan*/  test_HDR_init_with_subject ; 
 int /*<<< orphan*/  test_HDR_push0_freeText ; 
 int /*<<< orphan*/  test_HDR_push1_freeText ; 
 int /*<<< orphan*/  test_HDR_set1_recipient ; 
 int /*<<< orphan*/  test_HDR_set1_sender ; 
 int /*<<< orphan*/  test_HDR_set1_senderKID ; 
 int /*<<< orphan*/  test_HDR_set_and_check_implicit_confirm ; 
 int /*<<< orphan*/  test_HDR_set_get_pvno ; 
 int /*<<< orphan*/  test_HDR_update_messageTime ; 

int FUNC2(void)
{
    FUNC1(rand_data, OSSL_CMP_TRANSACTIONID_LENGTH);
    /* Message header tests */
    FUNC0(test_HDR_set_get_pvno);
    FUNC0(test_HDR_get0_senderNonce);
    FUNC0(test_HDR_set1_sender);
    FUNC0(test_HDR_set1_recipient);
    FUNC0(test_HDR_update_messageTime);
    FUNC0(test_HDR_set1_senderKID);
    FUNC0(test_HDR_push0_freeText);
    /* indirectly tests ossl_cmp_pkifreetext_push_str(): */
    FUNC0(test_HDR_push1_freeText);
    FUNC0(test_HDR_generalInfo_push0_item);
    FUNC0(test_HDR_generalInfo_push1_items);
    FUNC0(test_HDR_set_and_check_implicit_confirm);
    /* also tests public function OSSL_CMP_HDR_get0_transactionID(): */
    /* also tests public function OSSL_CMP_HDR_get0_recipNonce(): */
    /* also tests internal function ossl_cmp_hdr_get_pvno(): */
    FUNC0(test_HDR_init);
    FUNC0(test_HDR_init_with_subject);
    FUNC0(test_HDR_init_no_ref_no_subject);
    /* TODO make sure that total number of tests (here currently 24) is shown,
     also for other cmp_*text.c. Currently the test drivers always show 1. */

    return 1;
}