
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int (*) (int),int) ;
 int ADD_TEST (int ) ;
 int CRYPTO_get_alloc_counts (int*,int*,int*) ;
 int OPENSSL_free (int *) ;
 int OSSL_NELEM (int ) ;
 int TEST_error (char*) ;
 int TEST_ptr (int ) ;
 int TOTAL_SSL_SET_BIO_TESTS ;
 int * cert ;
 int certsdir ;
 int * getenv (char*) ;
 int max_fragment_len_test ;
 int * privkey ;
 int shared_ciphers_data ;
 int srpvfile ;
 int test_ca_names (int) ;
 int test_cert_cb (int) ;
 int test_ciphersuite_change ;
 int test_client_cert_cb (int) ;
 int test_client_hello_cb ;
 int test_custom_exts (int) ;
 int test_early_data_not_expected (int) ;
 int test_early_data_not_sent (int) ;
 int test_early_data_psk (int) ;
 int test_early_data_read_write (int) ;
 int test_early_data_replay (int) ;
 int test_early_data_skip (int) ;
 int test_early_data_skip_abort (int) ;
 int test_early_data_skip_hrr (int) ;
 int test_early_data_skip_hrr_fail (int) ;
 int test_early_data_tls1_2 (int) ;
 int test_export_key_mat (int) ;
 int test_export_key_mat_early (int) ;
 int test_get_argument (int) ;
 int test_info_callback (int) ;
 int test_key_exchange (int) ;
 int test_key_update ;
 int test_key_update_in_write (int) ;
 int test_keylog ;
 int test_keylog_no_master_key ;
 int test_ktls_client_no_rx_server ;
 int test_ktls_client_no_tx_server ;
 int test_ktls_client_no_txrx_server ;
 int test_ktls_client_server ;
 int test_ktls_no_rx_client_no_rx_server ;
 int test_ktls_no_rx_client_no_tx_server ;
 int test_ktls_no_rx_client_no_txrx_server ;
 int test_ktls_no_rx_client_server ;
 int test_ktls_no_tx_client_no_rx_server ;
 int test_ktls_no_tx_client_no_tx_server ;
 int test_ktls_no_tx_client_no_txrx_server ;
 int test_ktls_no_tx_client_server ;
 int test_ktls_no_txrx_client_no_rx_server ;
 int test_ktls_no_txrx_client_no_tx_server ;
 int test_ktls_no_txrx_client_no_txrx_server ;
 int test_ktls_no_txrx_client_server ;
 int test_ktls_sendfile ;
 int test_large_message_dtls ;
 int test_large_message_tls ;
 int test_large_message_tls_read_ahead ;
 int test_max_fragment_len_ext (int) ;
 void* test_mk_file_path (int ,char*) ;
 int test_no_ems ;
 int test_pha_key_update ;
 int test_printf_stdout (char*,int,int,int) ;
 int test_psk_tickets ;
 int test_serverinfo (int) ;
 int test_session_with_both_cache ;
 int test_session_with_only_ext_cache ;
 int test_session_with_only_int_cache ;
 int test_set_ciphersuite (int) ;
 int test_set_sigalgs (int) ;
 int test_shutdown (int) ;
 int test_srp (int) ;
 int test_ssl_bio_change_rbio ;
 int test_ssl_bio_change_wbio ;
 int test_ssl_bio_pop_next_bio ;
 int test_ssl_bio_pop_ssl_bio ;
 int test_ssl_clear (int) ;
 int test_ssl_get_shared_ciphers (int) ;
 int test_ssl_pending (int) ;
 int test_ssl_set_bio (int) ;
 int test_stateful_tickets (int) ;
 int test_stateless ;
 int test_stateless_tickets (int) ;
 int test_ticket_callbacks (int) ;
 int test_tls13_ciphersuite (int) ;
 int test_tls13_psk (int) ;
 int test_tlsext_status_type ;
 int testsigalgs ;
 int tmpfilename ;

int setup_tests(void)
{
    if (!TEST_ptr(certsdir = test_get_argument(0))
            || !TEST_ptr(srpvfile = test_get_argument(1))
            || !TEST_ptr(tmpfilename = test_get_argument(2)))
        return 0;

    if (getenv("OPENSSL_TEST_GETCOUNTS") != ((void*)0)) {




        int i, mcount, rcount, fcount;

        for (i = 0; i < 4; i++)
            test_export_key_mat(i);
        CRYPTO_get_alloc_counts(&mcount, &rcount, &fcount);
        test_printf_stdout("malloc %d realloc %d free %d\n",
                mcount, rcount, fcount);
        return 1;

    }

    cert = test_mk_file_path(certsdir, "servercert.pem");
    if (cert == ((void*)0))
        return 0;

    privkey = test_mk_file_path(certsdir, "serverkey.pem");
    if (privkey == ((void*)0)) {
        OPENSSL_free(cert);
        return 0;
    }



    ADD_TEST(test_ktls_no_txrx_client_no_txrx_server);
    ADD_TEST(test_ktls_no_rx_client_no_txrx_server);
    ADD_TEST(test_ktls_no_tx_client_no_txrx_server);
    ADD_TEST(test_ktls_client_no_txrx_server);
    ADD_TEST(test_ktls_no_txrx_client_no_rx_server);
    ADD_TEST(test_ktls_no_rx_client_no_rx_server);
    ADD_TEST(test_ktls_no_tx_client_no_rx_server);
    ADD_TEST(test_ktls_client_no_rx_server);
    ADD_TEST(test_ktls_no_txrx_client_no_tx_server);
    ADD_TEST(test_ktls_no_rx_client_no_tx_server);
    ADD_TEST(test_ktls_no_tx_client_no_tx_server);
    ADD_TEST(test_ktls_client_no_tx_server);
    ADD_TEST(test_ktls_no_txrx_client_server);
    ADD_TEST(test_ktls_no_rx_client_server);
    ADD_TEST(test_ktls_no_tx_client_server);
    ADD_TEST(test_ktls_client_server);
    ADD_TEST(test_ktls_sendfile);

    ADD_TEST(test_large_message_tls);
    ADD_TEST(test_large_message_tls_read_ahead);

    ADD_TEST(test_large_message_dtls);


    ADD_TEST(test_tlsext_status_type);

    ADD_TEST(test_session_with_only_int_cache);
    ADD_TEST(test_session_with_only_ext_cache);
    ADD_TEST(test_session_with_both_cache);

    ADD_ALL_TESTS(test_stateful_tickets, 3);
    ADD_ALL_TESTS(test_stateless_tickets, 3);
    ADD_TEST(test_psk_tickets);

    ADD_ALL_TESTS(test_ssl_set_bio, TOTAL_SSL_SET_BIO_TESTS);
    ADD_TEST(test_ssl_bio_pop_next_bio);
    ADD_TEST(test_ssl_bio_pop_ssl_bio);
    ADD_TEST(test_ssl_bio_change_rbio);
    ADD_TEST(test_ssl_bio_change_wbio);

    ADD_ALL_TESTS(test_set_sigalgs, OSSL_NELEM(testsigalgs) * 2);
    ADD_TEST(test_keylog);


    ADD_TEST(test_keylog_no_master_key);


    ADD_TEST(test_client_hello_cb);
    ADD_TEST(test_no_ems);


    ADD_ALL_TESTS(test_early_data_read_write, 3);




    ADD_ALL_TESTS(test_early_data_replay, 2);
    ADD_ALL_TESTS(test_early_data_skip, 3);
    ADD_ALL_TESTS(test_early_data_skip_hrr, 3);
    ADD_ALL_TESTS(test_early_data_skip_hrr_fail, 3);
    ADD_ALL_TESTS(test_early_data_skip_abort, 3);
    ADD_ALL_TESTS(test_early_data_not_sent, 3);
    ADD_ALL_TESTS(test_early_data_psk, 8);
    ADD_ALL_TESTS(test_early_data_not_expected, 3);

    ADD_ALL_TESTS(test_early_data_tls1_2, 3);



    ADD_ALL_TESTS(test_set_ciphersuite, 10);
    ADD_TEST(test_ciphersuite_change);
    ADD_ALL_TESTS(test_tls13_ciphersuite, 4);



    ADD_ALL_TESTS(test_tls13_psk, 4);



    ADD_ALL_TESTS(test_key_exchange, 14);




    ADD_ALL_TESTS(test_custom_exts, 5);
    ADD_TEST(test_stateless);
    ADD_TEST(test_pha_key_update);



    ADD_ALL_TESTS(test_serverinfo, 8);
    ADD_ALL_TESTS(test_export_key_mat, 6);

    ADD_ALL_TESTS(test_export_key_mat_early, 3);
    ADD_TEST(test_key_update);
    ADD_ALL_TESTS(test_key_update_in_write, 2);

    ADD_ALL_TESTS(test_ssl_clear, 2);
    ADD_ALL_TESTS(test_max_fragment_len_ext, OSSL_NELEM(max_fragment_len_test));

    ADD_ALL_TESTS(test_srp, 6);

    ADD_ALL_TESTS(test_info_callback, 6);
    ADD_ALL_TESTS(test_ssl_pending, 2);
    ADD_ALL_TESTS(test_ssl_get_shared_ciphers, OSSL_NELEM(shared_ciphers_data));
    ADD_ALL_TESTS(test_ticket_callbacks, 12);
    ADD_ALL_TESTS(test_shutdown, 7);
    ADD_ALL_TESTS(test_cert_cb, 6);
    ADD_ALL_TESTS(test_client_cert_cb, 2);
    ADD_ALL_TESTS(test_ca_names, 3);
    return 1;
}
