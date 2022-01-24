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
 int /*<<< orphan*/  test_CTX_print_errors ; 
 int /*<<< orphan*/  test_CTX_push0_geninfo_ITAV ; 
 int /*<<< orphan*/  test_CTX_push0_genm_ITAV ; 
 int /*<<< orphan*/  test_CTX_push0_policy ; 
 int /*<<< orphan*/  test_CTX_push1_subjectAltName ; 
 int /*<<< orphan*/  test_CTX_reinit ; 
 int /*<<< orphan*/  test_CTX_reqExtensions_have_SAN ; 
 int /*<<< orphan*/  test_CTX_set0_get0_newCert ; 
 int /*<<< orphan*/  test_CTX_set0_get0_newPkey_0 ; 
 int /*<<< orphan*/  test_CTX_set0_get0_newPkey_1 ; 
 int /*<<< orphan*/  test_CTX_set0_get0_reqExtensions ; 
 int /*<<< orphan*/  test_CTX_set0_get0_statusString ; 
 int /*<<< orphan*/  test_CTX_set0_get0_trustedStore ; 
 int /*<<< orphan*/  test_CTX_set0_get0_validatedSrvCert ; 
 int /*<<< orphan*/  test_CTX_set1_get0_clCert ; 
 int /*<<< orphan*/  test_CTX_set1_get0_expected_sender ; 
 int /*<<< orphan*/  test_CTX_set1_get0_extraCertsOut ; 
 int /*<<< orphan*/  test_CTX_set1_get0_issuer ; 
 int /*<<< orphan*/  test_CTX_set1_get0_oldCert ; 
 int /*<<< orphan*/  test_CTX_set1_get0_p10CSR ; 
 int /*<<< orphan*/  test_CTX_set1_get0_pkey ; 
 int /*<<< orphan*/  test_CTX_set1_get0_proxyName ; 
 int /*<<< orphan*/  test_CTX_set1_get0_recipNonce ; 
 int /*<<< orphan*/  test_CTX_set1_get0_recipient ; 
 int /*<<< orphan*/  test_CTX_set1_get0_senderNonce ; 
 int /*<<< orphan*/  test_CTX_set1_get0_serverName ; 
 int /*<<< orphan*/  test_CTX_set1_get0_serverPath ; 
 int /*<<< orphan*/  test_CTX_set1_get0_srvCert ; 
 int /*<<< orphan*/  test_CTX_set1_get0_subjectName ; 
 int /*<<< orphan*/  test_CTX_set1_get0_transactionID ; 
 int /*<<< orphan*/  test_CTX_set1_get0_untrusted_certs ; 
 int /*<<< orphan*/  test_CTX_set1_get1_caPubs ; 
 int /*<<< orphan*/  test_CTX_set1_get1_extraCertsIn ; 
 int /*<<< orphan*/  test_CTX_set1_get1_referenceValue_str ; 
 int /*<<< orphan*/  test_CTX_set1_get1_secretValue_str ; 
 int /*<<< orphan*/  test_CTX_set_get_certConf_cb ; 
 int /*<<< orphan*/  test_CTX_set_get_certConf_cb_arg ; 
 int /*<<< orphan*/  test_CTX_set_get_failInfoCode ; 
 int /*<<< orphan*/  test_CTX_set_get_http_cb ; 
 int /*<<< orphan*/  test_CTX_set_get_http_cb_arg ; 
 int /*<<< orphan*/  test_CTX_set_get_log_cb ; 
 int /*<<< orphan*/  test_CTX_set_get_option_16 ; 
 int /*<<< orphan*/  test_CTX_set_get_proxyPort ; 
 int /*<<< orphan*/  test_CTX_set_get_serverPort ; 
 int /*<<< orphan*/  test_CTX_set_get_status ; 
 int /*<<< orphan*/  test_CTX_set_get_transfer_cb ; 
 int /*<<< orphan*/  test_CTX_set_get_transfer_cb_arg ; 
 int /*<<< orphan*/  test_cmp_ctx_log_cb ; 

int FUNC1(void)
{
    /* OSSL_CMP_CTX_new() is tested by set_up() */
    /* OSSL_CMP_CTX_free() is tested by tear_down() */
    FUNC0(test_CTX_reinit);

/* various CMP options: */
    FUNC0(test_CTX_set_get_option_16);
/* CMP-specific callback for logging and outputting the error queue: */
#ifndef OPENSSL_NO_TRACE
    FUNC0(test_CTX_set_get_log_cb);
#endif
    /*
     * also tests OSSL_CMP_log_open(), OSSL_CMP_CTX_set_log_verbosity(),
     * OSSL_CMP_err(), OSSL_CMP_warn(), * OSSL_CMP_debug(),
     * OSSL_CMP_log2(), ossl_cmp_log_parse_metadata(), and OSSL_CMP_log_close()
     * with OSSL_CMP_severity OSSL_CMP_LOG_ERR/WARNING/DEBUG/INFO:
     */
    FUNC0(test_cmp_ctx_log_cb);
#if !defined(OPENSSL_NO_ERR) && !defined(OPENSSL_NO_AUTOERRINIT)
    /* also tests OSSL_CMP_CTX_set_log_cb(), OSSL_CMP_print_errors_cb(),
       ossl_cmp_add_error_txt(), and the macros
       ossl_cmp_add_error_data and ossl_cmp_add_error_line:
    */
    FUNC0(test_CTX_print_errors);
#endif
/* message transfer: */
    FUNC0(test_CTX_set1_get0_serverPath);
    FUNC0(test_CTX_set1_get0_serverName);
    FUNC0(test_CTX_set_get_serverPort);
    FUNC0(test_CTX_set1_get0_proxyName);
    FUNC0(test_CTX_set_get_proxyPort);
    FUNC0(test_CTX_set_get_http_cb);
    FUNC0(test_CTX_set_get_http_cb_arg);
    FUNC0(test_CTX_set_get_transfer_cb);
    FUNC0(test_CTX_set_get_transfer_cb_arg);
/* server authentication: */
    FUNC0(test_CTX_set1_get0_srvCert);
    FUNC0(test_CTX_set0_get0_validatedSrvCert);
    FUNC0(test_CTX_set1_get0_expected_sender);
    FUNC0(test_CTX_set0_get0_trustedStore);
    FUNC0(test_CTX_set1_get0_untrusted_certs);
/* client authentication: */
    FUNC0(test_CTX_set1_get0_clCert);
    FUNC0(test_CTX_set1_get0_pkey);
    /* the following two also test ossl_cmp_asn1_octet_string_set1_bytes(): */
    FUNC0(test_CTX_set1_get1_referenceValue_str);
    FUNC0(test_CTX_set1_get1_secretValue_str);
/* CMP message header and extra certificates: */
    FUNC0(test_CTX_set1_get0_recipient);
    FUNC0(test_CTX_push0_geninfo_ITAV);
    FUNC0(test_CTX_set1_get0_extraCertsOut);
/* certificate template: */
    FUNC0(test_CTX_set0_get0_newPkey_1);
    FUNC0(test_CTX_set0_get0_newPkey_0);
    FUNC0(test_CTX_set1_get0_issuer);
    FUNC0(test_CTX_set1_get0_subjectName);
#ifdef ISSUE_9504_RESOLVED
/* test currently fails, see https://github.com/openssl/openssl/issues/9504 */
    ADD_TEST(test_CTX_push1_subjectAltName);
#endif
    FUNC0(test_CTX_set0_get0_reqExtensions);
    FUNC0(test_CTX_reqExtensions_have_SAN);
    FUNC0(test_CTX_push0_policy);
    FUNC0(test_CTX_set1_get0_oldCert);
#ifdef ISSUE_9504_RESOLVED
/* test currently fails, see https://github.com/openssl/openssl/issues/9504 */
    ADD_TEST(test_CTX_set1_get0_p10CSR);
#endif
/* misc body contents: */
    FUNC0(test_CTX_push0_genm_ITAV);
/* certificate confirmation: */
    FUNC0(test_CTX_set_get_certConf_cb);
    FUNC0(test_CTX_set_get_certConf_cb_arg);
/* result fetching: */
    FUNC0(test_CTX_set_get_status);
    FUNC0(test_CTX_set0_get0_statusString);
    FUNC0(test_CTX_set_get_failInfoCode);
    FUNC0(test_CTX_set0_get0_newCert);
    FUNC0(test_CTX_set1_get1_caPubs);
    FUNC0(test_CTX_set1_get1_extraCertsIn);
/* exported for testing and debugging purposes: */
    /* the following three also test ossl_cmp_asn1_octet_string_set1(): */
    FUNC0(test_CTX_set1_get0_transactionID);
    FUNC0(test_CTX_set1_get0_senderNonce);
    FUNC0(test_CTX_set1_get0_recipNonce);

    /* TODO ossl_cmp_build_cert_chain() will be tested with cmp_protect.c*/

    return 1;
}