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
typedef  int /*<<< orphan*/  zend_string ;
struct php_openssl_cipher_mode {scalar_t__ is_aead; scalar_t__ is_single_run_aead; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const EVP_CIPHER *cipher_type,
		EVP_CIPHER_CTX *cipher_ctx, struct php_openssl_cipher_mode *mode,
		zend_string **poutbuf, int *poutlen, char *data, size_t data_len,
		char *aad, size_t aad_len, int enc)  /* {{{ */
{
	int i = 0;

	if (mode->is_single_run_aead && !FUNC1(cipher_ctx, NULL, &i, NULL, (int)data_len)) {
		FUNC4();
		FUNC3(NULL, E_WARNING, "Setting of data length failed");
		return FAILURE;
	}

	if (mode->is_aead && !FUNC1(cipher_ctx, NULL, &i, (unsigned char *)aad, (int)aad_len)) {
		FUNC4();
		FUNC3(NULL, E_WARNING, "Setting of additional application data failed");
		return FAILURE;
	}

	*poutbuf = FUNC5((int)data_len + FUNC0(cipher_type), 0);

	if (!FUNC1(cipher_ctx, (unsigned char*)FUNC2(*poutbuf),
					&i, (unsigned char *)data, (int)data_len)) {
		/* we don't show warning when we fail but if we ever do, then it should look like this:
		if (mode->is_single_run_aead && !enc) {
			php_error_docref(NULL, E_WARNING, "Tag verifycation failed");
		} else {
			php_error_docref(NULL, E_WARNING, enc ? "Encryption failed" : "Decryption failed");
		}
		*/
		FUNC4();
		FUNC6(*poutbuf, 0);
		return FAILURE;
	}

	*poutlen = i;

	return SUCCESS;
}