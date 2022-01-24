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
struct php_x509_request {scalar_t__ priv_key_bits; int priv_key_type; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/  curve_name; int /*<<< orphan*/  section_name; int /*<<< orphan*/  req_config; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ MIN_KEY_LENGTH ; 
 int /*<<< orphan*/  NID_undef ; 
 int /*<<< orphan*/  OPENSSL_EC_NAMED_CURVE ; 
#define  OPENSSL_KEYTYPE_DH 131 
#define  OPENSSL_KEYTYPE_DSA 130 
#define  OPENSSL_KEYTYPE_EC 129 
#define  OPENSSL_KEYTYPE_RSA 128 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  RSA_F4 ; 
 scalar_t__ FUNC28 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC32 (char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (char*,int,int) ; 

__attribute__((used)) static EVP_PKEY * FUNC35(struct php_x509_request * req)
{
	char * randfile = NULL;
	int egdsocket, seeded;
	EVP_PKEY * return_val = NULL;

	if (req->priv_key_bits < MIN_KEY_LENGTH) {
		FUNC31(NULL, E_WARNING, "private key length is too short; it needs to be at least %d bits, not %d",
				MIN_KEY_LENGTH, req->priv_key_bits);
		return NULL;
	}

	randfile = FUNC3(req->req_config, req->section_name, "RANDFILE");
	if (randfile == NULL) {
		FUNC33();
	}
	FUNC32(randfile, &egdsocket, &seeded);

	if ((req->priv_key = FUNC26()) != NULL) {
		switch(req->priv_key_type) {
			case OPENSSL_KEYTYPE_RSA:
				{
					RSA* rsaparam;
#if OPENSSL_VERSION_NUMBER < 0x10002000L
					/* OpenSSL 1.0.2 deprecates RSA_generate_key */
					FUNC27();
					rsaparam = (RSA*)FUNC28(req->priv_key_bits, RSA_F4, NULL, NULL);
#else
					{
						BIGNUM *bne = (BIGNUM *)BN_new();
						if (BN_set_word(bne, RSA_F4) != 1) {
							BN_free(bne);
							php_error_docref(NULL, E_WARNING, "failed setting exponent");
							return NULL;
						}
						rsaparam = RSA_new();
						PHP_OPENSSL_RAND_ADD_TIME();
						if (rsaparam == NULL || !RSA_generate_key_ex(rsaparam, req->priv_key_bits, bne, NULL)) {
							php_openssl_store_errors();
						}
						BN_free(bne);
					}
#endif
					if (rsaparam && FUNC24(req->priv_key, rsaparam)) {
						return_val = req->priv_key;
					} else {
						FUNC33();
					}
				}
				break;
#if !defined(NO_DSA)
			case OPENSSL_KEYTYPE_DSA:
				FUNC27();
				{
					DSA *dsaparam = FUNC15();
					if (dsaparam && FUNC13(dsaparam, req->priv_key_bits, NULL, 0, NULL, NULL, NULL)) {
						FUNC16(dsaparam, FUNC14());
						if (FUNC12(dsaparam)) {
							if (FUNC22(req->priv_key, dsaparam)) {
								return_val = req->priv_key;
							} else {
								FUNC33();
							}
						} else {
							FUNC33();
							FUNC11(dsaparam);
						}
					} else {
						FUNC33();
					}
				}
				break;
#endif
#if !defined(NO_DH)
			case OPENSSL_KEYTYPE_DH:
				FUNC27();
				{
					int codes = 0;
					DH *dhparam = FUNC9();
					if (dhparam && FUNC7(dhparam, req->priv_key_bits, 2, NULL)) {
						FUNC10(dhparam, FUNC8());
						if (FUNC4(dhparam, &codes) && codes == 0 && FUNC6(dhparam)) {
							if (FUNC21(req->priv_key, dhparam)) {
								return_val = req->priv_key;
							} else {
								FUNC33();
							}
						} else {
							FUNC33();
							FUNC5(dhparam);
						}
					} else {
						FUNC33();
					}
				}
				break;
#endif
#ifdef HAVE_EVP_PKEY_EC
			case OPENSSL_KEYTYPE_EC:
				{
					EC_KEY *eckey;
					if (req->curve_name == NID_undef) {
						php_error_docref(NULL, E_WARNING, "Missing configuration value: 'curve_name' not set");
						return NULL;
					}
					eckey = EC_KEY_new_by_curve_name(req->curve_name);
					if (eckey) {
						EC_KEY_set_asn1_flag(eckey, OPENSSL_EC_NAMED_CURVE);
						if (EC_KEY_generate_key(eckey) &&
							EVP_PKEY_assign_EC_KEY(req->priv_key, eckey)) {
							return_val = req->priv_key;
						} else {
							EC_KEY_free(eckey);
						}
					}
				}
				break;
#endif
			default:
				FUNC31(NULL, E_WARNING, "Unsupported private key type");
		}
	} else {
		FUNC33();
	}

	FUNC34(randfile, egdsocket, seeded);

	if (return_val == NULL) {
		FUNC25(req->priv_key);
		req->priv_key = NULL;
		return NULL;
	}

	return return_val;
}