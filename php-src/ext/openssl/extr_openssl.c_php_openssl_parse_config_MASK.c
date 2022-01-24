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
typedef  int /*<<< orphan*/  zend_long ;
struct php_x509_request {char* config_filename; char* section_name; char* digest_name; char* extensions_section; char* request_extensions_section; int priv_key_encrypt; int /*<<< orphan*/ * req_config; int /*<<< orphan*/  curve_name; int /*<<< orphan*/ * digest; int /*<<< orphan*/ * md_alg; int /*<<< orphan*/  const* priv_key_encrypt_cipher; int /*<<< orphan*/  priv_key_type; int /*<<< orphan*/  priv_key_bits; int /*<<< orphan*/ * global_config; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ IS_TRUE ; 
 int /*<<< orphan*/  NID_undef ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  OPENSSL_KEYTYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS7_BINARY ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 char* default_ssl_conf_filename ; 
 int /*<<< orphan*/  extensions_section ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC19 (struct php_x509_request*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  request_extensions_section ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC25(struct php_x509_request * req, zval * optional_args) /* {{{ */
{
	char * str;
	zval * item;

	FUNC13("config", req->config_filename, default_ssl_conf_filename);
	FUNC13("config_section_name", req->section_name, "req");
	req->global_config = FUNC5(NULL, default_ssl_conf_filename, NULL);
	if (req->global_config == NULL) {
		FUNC22();
	}
	req->req_config = FUNC5(NULL, req->config_filename, NULL);
	if (req->req_config == NULL) {
		FUNC22();
		return FAILURE;
	}

	/* read in the oids */
	str = FUNC4(req->req_config, NULL, "oid_file");
	if (str == NULL) {
		FUNC22();
	} else if (!FUNC21(str)) {
		BIO *oid_bio = FUNC2(str, FUNC10(PKCS7_BINARY));
		if (oid_bio) {
			FUNC8(oid_bio);
			FUNC1(oid_bio);
			FUNC22();
		}
	}
	if (FUNC19(req) == FAILURE) {
		return FAILURE;
	}
	FUNC13("digest_alg", req->digest_name,
		FUNC4(req->req_config, req->section_name, "default_md"));
	FUNC13("x509_extensions", req->extensions_section,
		FUNC4(req->req_config, req->section_name, "x509_extensions"));
	FUNC13("req_extensions", req->request_extensions_section,
		FUNC4(req->req_config, req->section_name, "req_extensions"));
	FUNC12("private_key_bits", req->priv_key_bits,
		FUNC3(req->req_config, req->section_name, "default_bits"));

	FUNC12("private_key_type", req->priv_key_type, OPENSSL_KEYTYPE_DEFAULT);

	if (optional_args && (item = FUNC24(FUNC14(optional_args), "encrypt_key", sizeof("encrypt_key")-1)) != NULL) {
		req->priv_key_encrypt = FUNC17(item) == IS_TRUE ? 1 : 0;
	} else {
		str = FUNC4(req->req_config, req->section_name, "encrypt_rsa_key");
		if (str == NULL) {
			str = FUNC4(req->req_config, req->section_name, "encrypt_key");
			/* it is sure that there are some errrors as str was NULL for encrypt_rsa_key */
			FUNC22();
		}
		if (str != NULL && FUNC23(str, "no") == 0) {
			req->priv_key_encrypt = 0;
		} else {
			req->priv_key_encrypt = 1;
		}
	}

	if (req->priv_key_encrypt &&
		optional_args &&
		(item = FUNC24(FUNC14(optional_args), "encrypt_key_cipher", sizeof("encrypt_key_cipher")-1)) != NULL &&
		FUNC17(item) == IS_LONG
	) {
		zend_long cipher_algo = FUNC15(item);
		const EVP_CIPHER* cipher = FUNC20(cipher_algo);
		if (cipher == NULL) {
			FUNC18(NULL, E_WARNING, "Unknown cipher algorithm for private key.");
			return FAILURE;
		} else {
			req->priv_key_encrypt_cipher = cipher;
		}
	} else {
		req->priv_key_encrypt_cipher = NULL;
	}

	/* digest alg */
	if (req->digest_name == NULL) {
		req->digest_name = FUNC4(req->req_config, req->section_name, "default_md");
	}
	if (req->digest_name != NULL) {
		req->digest = req->md_alg = FUNC6(req->digest_name);
	} else {
		FUNC22();
	}
	if (req->md_alg == NULL) {
		req->md_alg = req->digest = FUNC7();
		FUNC22();
	}

	FUNC11(extensions_section);
#ifdef HAVE_EVP_PKEY_EC
	/* set the ec group curve name */
	req->curve_name = NID_undef;
	if (optional_args && (item = zend_hash_str_find(Z_ARRVAL_P(optional_args), "curve_name", sizeof("curve_name")-1)) != NULL
		&& Z_TYPE_P(item) == IS_STRING) {
		req->curve_name = OBJ_sn2nid(Z_STRVAL_P(item));
		if (req->curve_name == NID_undef) {
			php_error_docref(NULL, E_WARNING, "Unknown elliptic curve (short) name %s", Z_STRVAL_P(item));
			return FAILURE;
		}
	}
#endif

	/* set the string mask */
	str = FUNC4(req->req_config, req->section_name, "string_mask");
	if (str == NULL) {
		FUNC22();
	} else if (!FUNC0(str)) {
		FUNC18(NULL, E_WARNING, "Invalid global string mask setting %s", str);
		return FAILURE;
	}

	FUNC11(request_extensions_section);

	return SUCCESS;
}