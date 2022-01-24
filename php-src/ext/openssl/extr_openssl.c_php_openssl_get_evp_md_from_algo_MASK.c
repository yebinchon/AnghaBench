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
typedef  int zend_long ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
#define  OPENSSL_ALGO_DSS1 137 
#define  OPENSSL_ALGO_MD2 136 
#define  OPENSSL_ALGO_MD4 135 
#define  OPENSSL_ALGO_MD5 134 
#define  OPENSSL_ALGO_RMD160 133 
#define  OPENSSL_ALGO_SHA1 132 
#define  OPENSSL_ALGO_SHA224 131 
#define  OPENSSL_ALGO_SHA256 130 
#define  OPENSSL_ALGO_SHA384 129 
#define  OPENSSL_ALGO_SHA512 128 

__attribute__((used)) static EVP_MD * FUNC10(zend_long algo) { /* {{{ */
	EVP_MD *mdtype;

	switch (algo) {
		case OPENSSL_ALGO_SHA1:
			mdtype = (EVP_MD *) FUNC5();
			break;
		case OPENSSL_ALGO_MD5:
			mdtype = (EVP_MD *) FUNC3();
			break;
		case OPENSSL_ALGO_MD4:
			mdtype = (EVP_MD *) FUNC2();
			break;
#ifdef HAVE_OPENSSL_MD2_H
		case OPENSSL_ALGO_MD2:
			mdtype = (EVP_MD *) EVP_md2();
			break;
#endif
#if PHP_OPENSSL_API_VERSION < 0x10100
		case OPENSSL_ALGO_DSS1:
			mdtype = (EVP_MD *) FUNC0();
			break;
#endif
		case OPENSSL_ALGO_SHA224:
			mdtype = (EVP_MD *) FUNC6();
			break;
		case OPENSSL_ALGO_SHA256:
			mdtype = (EVP_MD *) FUNC7();
			break;
		case OPENSSL_ALGO_SHA384:
			mdtype = (EVP_MD *) FUNC8();
			break;
		case OPENSSL_ALGO_SHA512:
			mdtype = (EVP_MD *) FUNC9();
			break;
		case OPENSSL_ALGO_RMD160:
			mdtype = (EVP_MD *) FUNC4();
			break;
		default:
			return NULL;
			break;
	}
	return mdtype;
}