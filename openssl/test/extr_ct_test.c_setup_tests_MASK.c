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
 char* certs_dir ; 
 char* ct_dir ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  test_ctlog_from_base64 ; 
 int /*<<< orphan*/  test_decode_tls_sct ; 
 int /*<<< orphan*/  test_default_ct_policy_eval_ctx_time_is_now ; 
 int /*<<< orphan*/  test_encode_tls_sct ; 
 int /*<<< orphan*/  test_multiple_scts_in_certificate ; 
 int /*<<< orphan*/  test_no_scts_in_certificate ; 
 int /*<<< orphan*/  test_one_sct_in_certificate ; 
 int /*<<< orphan*/  test_verify_fails_for_future_sct ; 
 int /*<<< orphan*/  test_verify_multiple_scts ; 
 int /*<<< orphan*/  test_verify_one_sct ; 

int FUNC3(void)
{
#ifndef OPENSSL_NO_CT
    if ((ct_dir = FUNC1("CT_DIR")) == NULL)
        ct_dir = "ct";
    if ((certs_dir = FUNC1("CERTS_DIR")) == NULL)
        certs_dir = "certs";

    FUNC0(test_no_scts_in_certificate);
    FUNC0(test_one_sct_in_certificate);
    FUNC0(test_multiple_scts_in_certificate);
    FUNC0(test_verify_one_sct);
    FUNC0(test_verify_multiple_scts);
    FUNC0(test_verify_fails_for_future_sct);
    FUNC0(test_decode_tls_sct);
    FUNC0(test_encode_tls_sct);
    FUNC0(test_default_ct_policy_eval_ctx_time_is_now);
    FUNC0(test_ctlog_from_base64);
#else
    printf("No CT support\n");
#endif
    return 1;
}