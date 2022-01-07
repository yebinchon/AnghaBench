
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_CTX_print_errors ;
 int test_CTX_push0_geninfo_ITAV ;
 int test_CTX_push0_genm_ITAV ;
 int test_CTX_push0_policy ;
 int test_CTX_push1_subjectAltName ;
 int test_CTX_reinit ;
 int test_CTX_reqExtensions_have_SAN ;
 int test_CTX_set0_get0_newCert ;
 int test_CTX_set0_get0_newPkey_0 ;
 int test_CTX_set0_get0_newPkey_1 ;
 int test_CTX_set0_get0_reqExtensions ;
 int test_CTX_set0_get0_statusString ;
 int test_CTX_set0_get0_trustedStore ;
 int test_CTX_set0_get0_validatedSrvCert ;
 int test_CTX_set1_get0_clCert ;
 int test_CTX_set1_get0_expected_sender ;
 int test_CTX_set1_get0_extraCertsOut ;
 int test_CTX_set1_get0_issuer ;
 int test_CTX_set1_get0_oldCert ;
 int test_CTX_set1_get0_p10CSR ;
 int test_CTX_set1_get0_pkey ;
 int test_CTX_set1_get0_proxyName ;
 int test_CTX_set1_get0_recipNonce ;
 int test_CTX_set1_get0_recipient ;
 int test_CTX_set1_get0_senderNonce ;
 int test_CTX_set1_get0_serverName ;
 int test_CTX_set1_get0_serverPath ;
 int test_CTX_set1_get0_srvCert ;
 int test_CTX_set1_get0_subjectName ;
 int test_CTX_set1_get0_transactionID ;
 int test_CTX_set1_get0_untrusted_certs ;
 int test_CTX_set1_get1_caPubs ;
 int test_CTX_set1_get1_extraCertsIn ;
 int test_CTX_set1_get1_referenceValue_str ;
 int test_CTX_set1_get1_secretValue_str ;
 int test_CTX_set_get_certConf_cb ;
 int test_CTX_set_get_certConf_cb_arg ;
 int test_CTX_set_get_failInfoCode ;
 int test_CTX_set_get_http_cb ;
 int test_CTX_set_get_http_cb_arg ;
 int test_CTX_set_get_log_cb ;
 int test_CTX_set_get_option_16 ;
 int test_CTX_set_get_proxyPort ;
 int test_CTX_set_get_serverPort ;
 int test_CTX_set_get_status ;
 int test_CTX_set_get_transfer_cb ;
 int test_CTX_set_get_transfer_cb_arg ;
 int test_cmp_ctx_log_cb ;

int setup_tests(void)
{


    ADD_TEST(test_CTX_reinit);


    ADD_TEST(test_CTX_set_get_option_16);


    ADD_TEST(test_CTX_set_get_log_cb);







    ADD_TEST(test_cmp_ctx_log_cb);





    ADD_TEST(test_CTX_print_errors);


    ADD_TEST(test_CTX_set1_get0_serverPath);
    ADD_TEST(test_CTX_set1_get0_serverName);
    ADD_TEST(test_CTX_set_get_serverPort);
    ADD_TEST(test_CTX_set1_get0_proxyName);
    ADD_TEST(test_CTX_set_get_proxyPort);
    ADD_TEST(test_CTX_set_get_http_cb);
    ADD_TEST(test_CTX_set_get_http_cb_arg);
    ADD_TEST(test_CTX_set_get_transfer_cb);
    ADD_TEST(test_CTX_set_get_transfer_cb_arg);

    ADD_TEST(test_CTX_set1_get0_srvCert);
    ADD_TEST(test_CTX_set0_get0_validatedSrvCert);
    ADD_TEST(test_CTX_set1_get0_expected_sender);
    ADD_TEST(test_CTX_set0_get0_trustedStore);
    ADD_TEST(test_CTX_set1_get0_untrusted_certs);

    ADD_TEST(test_CTX_set1_get0_clCert);
    ADD_TEST(test_CTX_set1_get0_pkey);

    ADD_TEST(test_CTX_set1_get1_referenceValue_str);
    ADD_TEST(test_CTX_set1_get1_secretValue_str);

    ADD_TEST(test_CTX_set1_get0_recipient);
    ADD_TEST(test_CTX_push0_geninfo_ITAV);
    ADD_TEST(test_CTX_set1_get0_extraCertsOut);

    ADD_TEST(test_CTX_set0_get0_newPkey_1);
    ADD_TEST(test_CTX_set0_get0_newPkey_0);
    ADD_TEST(test_CTX_set1_get0_issuer);
    ADD_TEST(test_CTX_set1_get0_subjectName);




    ADD_TEST(test_CTX_set0_get0_reqExtensions);
    ADD_TEST(test_CTX_reqExtensions_have_SAN);
    ADD_TEST(test_CTX_push0_policy);
    ADD_TEST(test_CTX_set1_get0_oldCert);





    ADD_TEST(test_CTX_push0_genm_ITAV);

    ADD_TEST(test_CTX_set_get_certConf_cb);
    ADD_TEST(test_CTX_set_get_certConf_cb_arg);

    ADD_TEST(test_CTX_set_get_status);
    ADD_TEST(test_CTX_set0_get0_statusString);
    ADD_TEST(test_CTX_set_get_failInfoCode);
    ADD_TEST(test_CTX_set0_get0_newCert);
    ADD_TEST(test_CTX_set1_get1_caPubs);
    ADD_TEST(test_CTX_set1_get1_extraCertsIn);


    ADD_TEST(test_CTX_set1_get0_transactionID);
    ADD_TEST(test_CTX_set1_get0_senderNonce);
    ADD_TEST(test_CTX_set1_get0_recipNonce);



    return 1;
}
