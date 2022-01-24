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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_array ;
typedef  int /*<<< orphan*/  SSL_CIPHER ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
#define  SSL3_VERSION 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
#define  TLS1_1_VERSION 131 
#define  TLS1_2_VERSION 130 
#define  TLS1_3_VERSION 129 
#define  TLS1_VERSION 128 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_array *FUNC9(SSL *ssl_handle) /* {{{ */
{
	zval meta_arr;
	char *proto_str;
	long proto = FUNC4(ssl_handle);
	const SSL_CIPHER *cipher = FUNC3(ssl_handle);

	switch (proto) {
#ifdef HAVE_TLS13
		case TLS1_3_VERSION:
			proto_str = "TLSv1.3";
			break;
#endif
#ifdef HAVE_TLS12
		case TLS1_2_VERSION:
			proto_str = "TLSv1.2";
			break;
#endif
#ifdef HAVE_TLS11
		case TLS1_1_VERSION:
			proto_str = "TLSv1.1";
			break;
#endif
		case TLS1_VERSION:
			proto_str = "TLSv1";
			break;
#ifdef HAVE_SSL3
		case SSL3_VERSION:
			proto_str = "SSLv3";
			break;
#endif
		default: proto_str = "UNKNOWN";
	}

	FUNC8(&meta_arr);
	FUNC7(&meta_arr, "protocol", proto_str);
	FUNC7(&meta_arr, "cipher_name", (char *) FUNC1(cipher));
	FUNC6(&meta_arr, "cipher_bits", FUNC0(cipher, NULL));
	FUNC7(&meta_arr, "cipher_version", FUNC2(cipher));

	return FUNC5(meta_arr);
}