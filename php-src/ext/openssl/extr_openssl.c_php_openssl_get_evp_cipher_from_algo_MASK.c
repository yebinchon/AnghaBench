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
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 () ; 
 int /*<<< orphan*/  const* FUNC1 () ; 
 int /*<<< orphan*/  const* FUNC2 () ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 int /*<<< orphan*/  const* FUNC5 () ; 
 int /*<<< orphan*/  const* FUNC6 () ; 
 int /*<<< orphan*/  const* FUNC7 () ; 
#define  PHP_OPENSSL_CIPHER_3DES 135 
#define  PHP_OPENSSL_CIPHER_AES_128_CBC 134 
#define  PHP_OPENSSL_CIPHER_AES_192_CBC 133 
#define  PHP_OPENSSL_CIPHER_AES_256_CBC 132 
#define  PHP_OPENSSL_CIPHER_DES 131 
#define  PHP_OPENSSL_CIPHER_RC2_128 130 
#define  PHP_OPENSSL_CIPHER_RC2_40 129 
#define  PHP_OPENSSL_CIPHER_RC2_64 128 

__attribute__((used)) static const EVP_CIPHER * FUNC8(zend_long algo) { /* {{{ */
	switch (algo) {
#ifndef OPENSSL_NO_RC2
		case PHP_OPENSSL_CIPHER_RC2_40:
			return FUNC5();
			break;
		case PHP_OPENSSL_CIPHER_RC2_64:
			return FUNC6();
			break;
		case PHP_OPENSSL_CIPHER_RC2_128:
			return FUNC7();
			break;
#endif

#ifndef OPENSSL_NO_DES
		case PHP_OPENSSL_CIPHER_DES:
			return FUNC3();
			break;
		case PHP_OPENSSL_CIPHER_3DES:
			return FUNC4();
			break;
#endif

#ifndef OPENSSL_NO_AES
		case PHP_OPENSSL_CIPHER_AES_128_CBC:
			return FUNC0();
			break;
		case PHP_OPENSSL_CIPHER_AES_192_CBC:
			return FUNC1();
			break;
		case PHP_OPENSSL_CIPHER_AES_256_CBC:
			return FUNC2();
			break;
#endif


		default:
			return NULL;
			break;
	}
}