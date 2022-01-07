; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@certsdir = common dso_local global i32 0, align 4
@srpvfile = common dso_local global i32 0, align 4
@tmpfilename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"OPENSSL_TEST_GETCOUNTS\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"malloc %d realloc %d free %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"servercert.pem\00", align 1
@cert = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"serverkey.pem\00", align 1
@privkey = common dso_local global i32* null, align 8
@test_ktls_no_txrx_client_no_txrx_server = common dso_local global i32 0, align 4
@test_ktls_no_rx_client_no_txrx_server = common dso_local global i32 0, align 4
@test_ktls_no_tx_client_no_txrx_server = common dso_local global i32 0, align 4
@test_ktls_client_no_txrx_server = common dso_local global i32 0, align 4
@test_ktls_no_txrx_client_no_rx_server = common dso_local global i32 0, align 4
@test_ktls_no_rx_client_no_rx_server = common dso_local global i32 0, align 4
@test_ktls_no_tx_client_no_rx_server = common dso_local global i32 0, align 4
@test_ktls_client_no_rx_server = common dso_local global i32 0, align 4
@test_ktls_no_txrx_client_no_tx_server = common dso_local global i32 0, align 4
@test_ktls_no_rx_client_no_tx_server = common dso_local global i32 0, align 4
@test_ktls_no_tx_client_no_tx_server = common dso_local global i32 0, align 4
@test_ktls_client_no_tx_server = common dso_local global i32 0, align 4
@test_ktls_no_txrx_client_server = common dso_local global i32 0, align 4
@test_ktls_no_rx_client_server = common dso_local global i32 0, align 4
@test_ktls_no_tx_client_server = common dso_local global i32 0, align 4
@test_ktls_client_server = common dso_local global i32 0, align 4
@test_ktls_sendfile = common dso_local global i32 0, align 4
@test_large_message_tls = common dso_local global i32 0, align 4
@test_large_message_tls_read_ahead = common dso_local global i32 0, align 4
@test_large_message_dtls = common dso_local global i32 0, align 4
@test_tlsext_status_type = common dso_local global i32 0, align 4
@test_session_with_only_int_cache = common dso_local global i32 0, align 4
@test_session_with_only_ext_cache = common dso_local global i32 0, align 4
@test_session_with_both_cache = common dso_local global i32 0, align 4
@test_psk_tickets = common dso_local global i32 0, align 4
@TOTAL_SSL_SET_BIO_TESTS = common dso_local global i32 0, align 4
@test_ssl_bio_pop_next_bio = common dso_local global i32 0, align 4
@test_ssl_bio_pop_ssl_bio = common dso_local global i32 0, align 4
@test_ssl_bio_change_rbio = common dso_local global i32 0, align 4
@test_ssl_bio_change_wbio = common dso_local global i32 0, align 4
@testsigalgs = common dso_local global i32 0, align 4
@test_keylog = common dso_local global i32 0, align 4
@test_keylog_no_master_key = common dso_local global i32 0, align 4
@test_client_hello_cb = common dso_local global i32 0, align 4
@test_no_ems = common dso_local global i32 0, align 4
@test_ciphersuite_change = common dso_local global i32 0, align 4
@test_stateless = common dso_local global i32 0, align 4
@test_pha_key_update = common dso_local global i32 0, align 4
@test_key_update = common dso_local global i32 0, align 4
@max_fragment_len_test = common dso_local global i32 0, align 4
@shared_ciphers_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @test_get_argument(i32 0)
  store i32 %6, i32* @certsdir, align 4
  %7 = call i32 @TEST_ptr(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = call i32 @test_get_argument(i32 1)
  store i32 %10, i32* @srpvfile, align 4
  %11 = call i32 @TEST_ptr(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 @test_get_argument(i32 2)
  store i32 %14, i32* @tmpfilename, align 4
  %15 = call i32 @TEST_ptr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9, %0
  store i32 0, i32* %1, align 4
  br label %170

18:                                               ; preds = %13
  %19 = call i32* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %28, %21
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @test_export_key_mat(i32 %26)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %22

31:                                               ; preds = %22
  %32 = call i32 @CRYPTO_get_alloc_counts(i32* %3, i32* %4, i32* %5)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @test_printf_stdout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  store i32 1, i32* %1, align 4
  br label %170

37:                                               ; preds = %18
  %38 = load i32, i32* @certsdir, align 4
  %39 = call i8* @test_mk_file_path(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** @cert, align 8
  %41 = load i32*, i32** @cert, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %170

44:                                               ; preds = %37
  %45 = load i32, i32* @certsdir, align 4
  %46 = call i8* @test_mk_file_path(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** @privkey, align 8
  %48 = load i32*, i32** @privkey, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** @cert, align 8
  %52 = call i32 @OPENSSL_free(i32* %51)
  store i32 0, i32* %1, align 4
  br label %170

53:                                               ; preds = %44
  %54 = load i32, i32* @test_ktls_no_txrx_client_no_txrx_server, align 4
  %55 = call i32 @ADD_TEST(i32 %54)
  %56 = load i32, i32* @test_ktls_no_rx_client_no_txrx_server, align 4
  %57 = call i32 @ADD_TEST(i32 %56)
  %58 = load i32, i32* @test_ktls_no_tx_client_no_txrx_server, align 4
  %59 = call i32 @ADD_TEST(i32 %58)
  %60 = load i32, i32* @test_ktls_client_no_txrx_server, align 4
  %61 = call i32 @ADD_TEST(i32 %60)
  %62 = load i32, i32* @test_ktls_no_txrx_client_no_rx_server, align 4
  %63 = call i32 @ADD_TEST(i32 %62)
  %64 = load i32, i32* @test_ktls_no_rx_client_no_rx_server, align 4
  %65 = call i32 @ADD_TEST(i32 %64)
  %66 = load i32, i32* @test_ktls_no_tx_client_no_rx_server, align 4
  %67 = call i32 @ADD_TEST(i32 %66)
  %68 = load i32, i32* @test_ktls_client_no_rx_server, align 4
  %69 = call i32 @ADD_TEST(i32 %68)
  %70 = load i32, i32* @test_ktls_no_txrx_client_no_tx_server, align 4
  %71 = call i32 @ADD_TEST(i32 %70)
  %72 = load i32, i32* @test_ktls_no_rx_client_no_tx_server, align 4
  %73 = call i32 @ADD_TEST(i32 %72)
  %74 = load i32, i32* @test_ktls_no_tx_client_no_tx_server, align 4
  %75 = call i32 @ADD_TEST(i32 %74)
  %76 = load i32, i32* @test_ktls_client_no_tx_server, align 4
  %77 = call i32 @ADD_TEST(i32 %76)
  %78 = load i32, i32* @test_ktls_no_txrx_client_server, align 4
  %79 = call i32 @ADD_TEST(i32 %78)
  %80 = load i32, i32* @test_ktls_no_rx_client_server, align 4
  %81 = call i32 @ADD_TEST(i32 %80)
  %82 = load i32, i32* @test_ktls_no_tx_client_server, align 4
  %83 = call i32 @ADD_TEST(i32 %82)
  %84 = load i32, i32* @test_ktls_client_server, align 4
  %85 = call i32 @ADD_TEST(i32 %84)
  %86 = load i32, i32* @test_ktls_sendfile, align 4
  %87 = call i32 @ADD_TEST(i32 %86)
  %88 = load i32, i32* @test_large_message_tls, align 4
  %89 = call i32 @ADD_TEST(i32 %88)
  %90 = load i32, i32* @test_large_message_tls_read_ahead, align 4
  %91 = call i32 @ADD_TEST(i32 %90)
  %92 = load i32, i32* @test_large_message_dtls, align 4
  %93 = call i32 @ADD_TEST(i32 %92)
  %94 = load i32, i32* @test_tlsext_status_type, align 4
  %95 = call i32 @ADD_TEST(i32 %94)
  %96 = load i32, i32* @test_session_with_only_int_cache, align 4
  %97 = call i32 @ADD_TEST(i32 %96)
  %98 = load i32, i32* @test_session_with_only_ext_cache, align 4
  %99 = call i32 @ADD_TEST(i32 %98)
  %100 = load i32, i32* @test_session_with_both_cache, align 4
  %101 = call i32 @ADD_TEST(i32 %100)
  %102 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_stateful_tickets, i32 3)
  %103 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_stateless_tickets, i32 3)
  %104 = load i32, i32* @test_psk_tickets, align 4
  %105 = call i32 @ADD_TEST(i32 %104)
  %106 = load i32, i32* @TOTAL_SSL_SET_BIO_TESTS, align 4
  %107 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_ssl_set_bio, i32 %106)
  %108 = load i32, i32* @test_ssl_bio_pop_next_bio, align 4
  %109 = call i32 @ADD_TEST(i32 %108)
  %110 = load i32, i32* @test_ssl_bio_pop_ssl_bio, align 4
  %111 = call i32 @ADD_TEST(i32 %110)
  %112 = load i32, i32* @test_ssl_bio_change_rbio, align 4
  %113 = call i32 @ADD_TEST(i32 %112)
  %114 = load i32, i32* @test_ssl_bio_change_wbio, align 4
  %115 = call i32 @ADD_TEST(i32 %114)
  %116 = load i32, i32* @testsigalgs, align 4
  %117 = call i32 @OSSL_NELEM(i32 %116)
  %118 = mul nsw i32 %117, 2
  %119 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_set_sigalgs, i32 %118)
  %120 = load i32, i32* @test_keylog, align 4
  %121 = call i32 @ADD_TEST(i32 %120)
  %122 = load i32, i32* @test_keylog_no_master_key, align 4
  %123 = call i32 @ADD_TEST(i32 %122)
  %124 = load i32, i32* @test_client_hello_cb, align 4
  %125 = call i32 @ADD_TEST(i32 %124)
  %126 = load i32, i32* @test_no_ems, align 4
  %127 = call i32 @ADD_TEST(i32 %126)
  %128 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_read_write, i32 3)
  %129 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_replay, i32 2)
  %130 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_skip, i32 3)
  %131 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_skip_hrr, i32 3)
  %132 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_skip_hrr_fail, i32 3)
  %133 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_skip_abort, i32 3)
  %134 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_not_sent, i32 3)
  %135 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_psk, i32 8)
  %136 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_not_expected, i32 3)
  %137 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_early_data_tls1_2, i32 3)
  %138 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_set_ciphersuite, i32 10)
  %139 = load i32, i32* @test_ciphersuite_change, align 4
  %140 = call i32 @ADD_TEST(i32 %139)
  %141 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_tls13_ciphersuite, i32 4)
  %142 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_tls13_psk, i32 4)
  %143 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_key_exchange, i32 14)
  %144 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_custom_exts, i32 5)
  %145 = load i32, i32* @test_stateless, align 4
  %146 = call i32 @ADD_TEST(i32 %145)
  %147 = load i32, i32* @test_pha_key_update, align 4
  %148 = call i32 @ADD_TEST(i32 %147)
  %149 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_serverinfo, i32 8)
  %150 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_export_key_mat, i32 6)
  %151 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_export_key_mat_early, i32 3)
  %152 = load i32, i32* @test_key_update, align 4
  %153 = call i32 @ADD_TEST(i32 %152)
  %154 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_key_update_in_write, i32 2)
  %155 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_ssl_clear, i32 2)
  %156 = load i32, i32* @max_fragment_len_test, align 4
  %157 = call i32 @OSSL_NELEM(i32 %156)
  %158 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_max_fragment_len_ext, i32 %157)
  %159 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_srp, i32 6)
  %160 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_info_callback, i32 6)
  %161 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_ssl_pending, i32 2)
  %162 = load i32, i32* @shared_ciphers_data, align 4
  %163 = call i32 @OSSL_NELEM(i32 %162)
  %164 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_ssl_get_shared_ciphers, i32 %163)
  %165 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_ticket_callbacks, i32 12)
  %166 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_shutdown, i32 7)
  %167 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_cert_cb, i32 6)
  %168 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_client_cert_cb, i32 2)
  %169 = call i32 @ADD_ALL_TESTS(i32 (i32)* @test_ca_names, i32 3)
  store i32 1, i32* %1, align 4
  br label %170

170:                                              ; preds = %53, %50, %43, %31, %17
  %171 = load i32, i32* %1, align 4
  ret i32 %171
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @test_get_argument(i32) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @test_export_key_mat(i32) #1

declare dso_local i32 @CRYPTO_get_alloc_counts(i32*, i32*, i32*) #1

declare dso_local i32 @test_printf_stdout(i8*, i32, i32, i32) #1

declare dso_local i8* @test_mk_file_path(i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32 (i32)*, i32) #1

declare dso_local i32 @test_stateful_tickets(i32) #1

declare dso_local i32 @test_stateless_tickets(i32) #1

declare dso_local i32 @test_ssl_set_bio(i32) #1

declare dso_local i32 @test_set_sigalgs(i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

declare dso_local i32 @test_early_data_read_write(i32) #1

declare dso_local i32 @test_early_data_replay(i32) #1

declare dso_local i32 @test_early_data_skip(i32) #1

declare dso_local i32 @test_early_data_skip_hrr(i32) #1

declare dso_local i32 @test_early_data_skip_hrr_fail(i32) #1

declare dso_local i32 @test_early_data_skip_abort(i32) #1

declare dso_local i32 @test_early_data_not_sent(i32) #1

declare dso_local i32 @test_early_data_psk(i32) #1

declare dso_local i32 @test_early_data_not_expected(i32) #1

declare dso_local i32 @test_early_data_tls1_2(i32) #1

declare dso_local i32 @test_set_ciphersuite(i32) #1

declare dso_local i32 @test_tls13_ciphersuite(i32) #1

declare dso_local i32 @test_tls13_psk(i32) #1

declare dso_local i32 @test_key_exchange(i32) #1

declare dso_local i32 @test_custom_exts(i32) #1

declare dso_local i32 @test_serverinfo(i32) #1

declare dso_local i32 @test_export_key_mat_early(i32) #1

declare dso_local i32 @test_key_update_in_write(i32) #1

declare dso_local i32 @test_ssl_clear(i32) #1

declare dso_local i32 @test_max_fragment_len_ext(i32) #1

declare dso_local i32 @test_srp(i32) #1

declare dso_local i32 @test_info_callback(i32) #1

declare dso_local i32 @test_ssl_pending(i32) #1

declare dso_local i32 @test_ssl_get_shared_ciphers(i32) #1

declare dso_local i32 @test_ticket_callbacks(i32) #1

declare dso_local i32 @test_shutdown(i32) #1

declare dso_local i32 @test_cert_cb(i32) #1

declare dso_local i32 @test_client_cert_cb(i32) #1

declare dso_local i32 @test_ca_names(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
