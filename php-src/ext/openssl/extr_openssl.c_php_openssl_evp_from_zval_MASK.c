#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ zend_resource ;
struct php_openssl_pem_password {char* key; size_t len; } ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_OBJECT ; 
 scalar_t__ IS_RESOURCE ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct php_openssl_pem_password*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS7_BINARY ; 
 int /*<<< orphan*/  TMP_CLEAN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ le_key ; 
 scalar_t__ le_x509 ; 
 scalar_t__ FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (char*) ; 
 int /*<<< orphan*/ * php_openssl_pem_password_cb ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 void* FUNC26 (TYPE_1__*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC28 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static EVP_PKEY * FUNC30(
		zval * val, int public_key, char *passphrase, size_t passphrase_len,
		int makeresource, zend_resource **resourceval)
{
	EVP_PKEY * key = NULL;
	X509 * cert = NULL;
	int free_cert = 0;
	zend_resource *cert_res = NULL;
	char * filename = NULL;
	zval tmp;

	FUNC9(&tmp);

#define TMP_CLEAN \
	if (Z_TYPE(tmp) == IS_STRING) {\
		zval_ptr_dtor_str(&tmp); \
	} \
	return NULL;

	if (resourceval) {
		*resourceval = NULL;
	}
	if (FUNC18(val) == IS_ARRAY) {
		zval * zphrase;

		/* get passphrase */

		if ((zphrase = FUNC27(FUNC11(val), 1)) == NULL) {
			FUNC20(NULL, E_WARNING, "key array must be of the form array(0 => key, 1 => phrase)");
			return NULL;
		}

		if (FUNC18(zphrase) == IS_STRING) {
			passphrase = FUNC16(zphrase);
			passphrase_len = FUNC14(zphrase);
		} else {
			FUNC8(&tmp, zphrase);
			if (!FUNC25(&tmp)) {
				return NULL;
			}

			passphrase = FUNC15(tmp);
			passphrase_len = FUNC13(tmp);
		}

		/* now set val to be the key param and continue */
		if ((val = FUNC27(FUNC11(val), 0)) == NULL) {
			FUNC20(NULL, E_WARNING, "key array must be of the form array(0 => key, 1 => phrase)");
			TMP_CLEAN;
		}
	}

	if (FUNC18(val) == IS_RESOURCE) {
		void * what;
		zend_resource * res = FUNC12(val);

		what = FUNC26(res, "OpenSSL X.509/key", le_x509, le_key);
		if (!what) {
			TMP_CLEAN;
		}
		if (resourceval) {
			*resourceval = res;
			FUNC10(val);
		}
		if (res->type == le_x509) {
			/* extract key from cert, depending on public_key param */
			cert = (X509*)what;
			free_cert = 0;
		} else if (res->type == le_key) {
			int is_priv;

			is_priv = FUNC21((EVP_PKEY*)what);

			/* check whether it is actually a private key if requested */
			if (!public_key && !is_priv) {
				FUNC20(NULL, E_WARNING, "supplied key param is a public key");
				TMP_CLEAN;
			}

			if (public_key && is_priv) {
				FUNC20(NULL, E_WARNING, "Don't know how to get public key from this private key");
				TMP_CLEAN;
			} else {
				if (FUNC17(tmp) == IS_STRING) {
					FUNC29(&tmp);
				}
				/* got the key - return it */
				return (EVP_PKEY*)what;
			}
		} else {
			/* other types could be used here - eg: file pointers and read in the data from them */
			TMP_CLEAN;
		}
	} else {
		/* force it to be a string and check if it refers to a file */
		/* passing non string values leaks, object uses toString, it returns NULL
		 * See bug38255.phpt
		 */
		if (!(FUNC18(val) == IS_STRING || FUNC18(val) == IS_OBJECT)) {
			TMP_CLEAN;
		}
		if (!FUNC25(val)) {
			TMP_CLEAN;
		}

		if (FUNC14(val) > 7 && FUNC19(FUNC16(val), "file://", sizeof("file://") - 1) == 0) {
			filename = FUNC16(val) + (sizeof("file://") - 1);
			if (FUNC22(filename)) {
				TMP_CLEAN;
			}
		}
		/* it's an X509 file/cert of some kind, and we need to extract the data from that */
		if (public_key) {
			cert = FUNC24(val, 0, &cert_res);
			free_cert = (cert_res == NULL);
			/* actual extraction done later */
			if (!cert) {
				/* not a X509 certificate, try to retrieve public key */
				BIO* in;
				if (filename) {
					in = FUNC1(filename, FUNC5(PKCS7_BINARY));
				} else {
					in = FUNC2(FUNC16(val), (int)FUNC14(val));
				}
				if (in == NULL) {
					FUNC23();
					TMP_CLEAN;
				}
				key = FUNC3(in, NULL,NULL, NULL);
				FUNC0(in);
			}
		} else {
			/* we want the private key */
			BIO *in;

			if (filename) {
				in = FUNC1(filename, FUNC5(PKCS7_BINARY));
			} else {
				in = FUNC2(FUNC16(val), (int)FUNC14(val));
			}

			if (in == NULL) {
				TMP_CLEAN;
			}
			if (passphrase == NULL) {
				key = FUNC4(in, NULL, NULL, NULL);
			} else {
				struct php_openssl_pem_password password;
				password.key = passphrase;
				password.len = passphrase_len;
				key = FUNC4(in, NULL, php_openssl_pem_password_cb, &password);
			}
			FUNC0(in);
		}
	}

	if (key == NULL) {
		FUNC23();

		if (public_key && cert) {
			/* extract public key from X509 cert */
			key = (EVP_PKEY *) FUNC7(cert);
			if (key == NULL) {
				FUNC23();
			}
		}
	}

	if (free_cert && cert) {
		FUNC6(cert);
	}
	if (key && makeresource && resourceval) {
		*resourceval = FUNC28(key, le_key);
	}
	if (FUNC17(tmp) == IS_STRING) {
		FUNC29(&tmp);
	}
	return key;
}