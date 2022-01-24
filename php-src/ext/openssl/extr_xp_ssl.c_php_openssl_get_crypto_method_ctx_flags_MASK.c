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
 int SSL_OP_ALL ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int SSL_OP_NO_TLSv1 ; 
 int SSL_OP_NO_TLSv1_1 ; 
 int SSL_OP_NO_TLSv1_2 ; 
 int SSL_OP_NO_TLSv1_3 ; 
 int STREAM_CRYPTO_METHOD_SSLv3 ; 
 int STREAM_CRYPTO_METHOD_TLSv1_0 ; 
 int STREAM_CRYPTO_METHOD_TLSv1_1 ; 
 int STREAM_CRYPTO_METHOD_TLSv1_2 ; 
 int STREAM_CRYPTO_METHOD_TLSv1_3 ; 

__attribute__((used)) static int FUNC0(int method_flags) /* {{{ */
{
	int ssl_ctx_options = SSL_OP_ALL;

#ifdef SSL_OP_NO_SSLv2
	ssl_ctx_options |= SSL_OP_NO_SSLv2;
#endif
#ifdef HAVE_SSL3
	if (!(method_flags & STREAM_CRYPTO_METHOD_SSLv3)) {
		ssl_ctx_options |= SSL_OP_NO_SSLv3;
	}
#endif
#ifdef HAVE_TLS1
	if (!(method_flags & STREAM_CRYPTO_METHOD_TLSv1_0)) {
		ssl_ctx_options |= SSL_OP_NO_TLSv1;
	}
#endif
#ifdef HAVE_TLS11
	if (!(method_flags & STREAM_CRYPTO_METHOD_TLSv1_1)) {
		ssl_ctx_options |= SSL_OP_NO_TLSv1_1;
	}
#endif
#ifdef HAVE_TLS12
	if (!(method_flags & STREAM_CRYPTO_METHOD_TLSv1_2)) {
		ssl_ctx_options |= SSL_OP_NO_TLSv1_2;
	}
#endif
#ifdef HAVE_TLS13
	if (!(method_flags & STREAM_CRYPTO_METHOD_TLSv1_3)) {
		ssl_ctx_options |= SSL_OP_NO_TLSv1_3;
	}
#endif

	return ssl_ctx_options;
}