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
typedef  size_t zend_off_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  PHP_SHA512_CTX ;
typedef  int /*<<< orphan*/  PHP_SHA256_CTX ;
typedef  int /*<<< orphan*/  PHP_SHA1_CTX ;
typedef  int /*<<< orphan*/  PHP_MD5_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC8 () ; 
 int FAILURE ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  PHAR_SIG_MD5 132 
#define  PHAR_SIG_OPENSSL 131 
#define  PHAR_SIG_SHA1 130 
#define  PHAR_SIG_SHA256 129 
#define  PHAR_SIG_SHA512 128 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  PHP_STREAM_COPY_ALL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  module_registry ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,size_t*) ; 
 size_t FUNC27 (char const*,int,char**) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC30 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC31 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char**,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC37(php_stream *fp, size_t end_of_phar, uint32_t sig_type, char *sig, size_t sig_len, char *fname, char **signature, size_t *signature_len, char **error) /* {{{ */
{
	size_t read_size, len;
	zend_off_t read_len;
	unsigned char buf[1024];

	FUNC32(fp);

	switch (sig_type) {
		case PHAR_SIG_OPENSSL: {
#ifdef PHAR_HAVE_OPENSSL
			BIO *in;
			EVP_PKEY *key;
			EVP_MD *mdtype = (EVP_MD *) EVP_sha1();
			EVP_MD_CTX *md_ctx;
#else
			size_t tempsig;
#endif
			zend_string *pubkey = NULL;
			char *pfile;
			php_stream *pfp;
#ifndef PHAR_HAVE_OPENSSL
			if (!FUNC35(&module_registry, "openssl", sizeof("openssl")-1)) {
				if (error) {
					FUNC34(error, 0, "openssl not loaded");
				}
				return FAILURE;
			}
#endif
			/* use __FILE__ . '.pubkey' for public key file */
			FUNC34(&pfile, 0, "%s.pubkey", fname);
			pfp = FUNC30(pfile, "rb", 0, NULL);
			FUNC24(pfile);

			if (!pfp || !(pubkey = FUNC29(pfp, PHP_STREAM_COPY_ALL, 0)) || !FUNC22(pubkey)) {
				if (pfp) {
					FUNC28(pfp);
				}
				if (error) {
					FUNC34(error, 0, "openssl public key could not be read");
				}
				return FAILURE;
			}

			FUNC28(pfp);
#ifndef PHAR_HAVE_OPENSSL
			tempsig = sig_len;

			if (FAILURE == FUNC26(0, fp, end_of_phar, pubkey ? FUNC23(pubkey) : NULL, pubkey ? FUNC22(pubkey) : 0, &sig, &tempsig)) {
				if (pubkey) {
					FUNC36(pubkey, 0);
				}

				if (error) {
					FUNC34(error, 0, "openssl signature could not be verified");
				}

				return FAILURE;
			}

			if (pubkey) {
				FUNC36(pubkey, 0);
			}

			sig_len = tempsig;
#else
			in = BIO_new_mem_buf(pubkey ? ZSTR_VAL(pubkey) : NULL, pubkey ? ZSTR_LEN(pubkey) : 0);

			if (NULL == in) {
				zend_string_release_ex(pubkey, 0);
				if (error) {
					spprintf(error, 0, "openssl signature could not be processed");
				}
				return FAILURE;
			}

			key = PEM_read_bio_PUBKEY(in, NULL, NULL, NULL);
			BIO_free(in);
			zend_string_release_ex(pubkey, 0);

			if (NULL == key) {
				if (error) {
					spprintf(error, 0, "openssl signature could not be processed");
				}
				return FAILURE;
			}

			md_ctx = EVP_MD_CTX_create();
			EVP_VerifyInit(md_ctx, mdtype);
			read_len = end_of_phar;

			if ((size_t)read_len > sizeof(buf)) {
				read_size = sizeof(buf);
			} else {
				read_size = (size_t)read_len;
			}

			php_stream_seek(fp, 0, SEEK_SET);

			while (read_size && (len = php_stream_read(fp, (char*)buf, read_size)) > 0) {
				EVP_VerifyUpdate (md_ctx, buf, len);
				read_len -= (zend_off_t)len;

				if (read_len < read_size) {
					read_size = (size_t)read_len;
				}
			}

			if (EVP_VerifyFinal(md_ctx, (unsigned char *)sig, sig_len, key) != 1) {
				/* 1: signature verified, 0: signature does not match, -1: failed signature operation */
				EVP_PKEY_free(key);
				EVP_MD_CTX_destroy(md_ctx);

				if (error) {
					spprintf(error, 0, "broken openssl signature");
				}

				return FAILURE;
			}

			EVP_PKEY_free(key);
			EVP_MD_CTX_destroy(md_ctx);
#endif

			*signature_len = FUNC27((const char*)sig, sig_len, signature);
		}
		break;
		case PHAR_SIG_SHA512: {
			unsigned char digest[64];
			PHP_SHA512_CTX context;

			if (sig_len < sizeof(digest)) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			FUNC20(&context);
			read_len = end_of_phar;

			if ((size_t)read_len > sizeof(buf)) {
				read_size = sizeof(buf);
			} else {
				read_size = (size_t)read_len;
			}

			while ((len = FUNC31(fp, (char*)buf, read_size)) > 0) {
				FUNC21(&context, buf, len);
				read_len -= (zend_off_t)len;
				if ((size_t)read_len < read_size) {
					read_size = (size_t)read_len;
				}
			}

			FUNC19(digest, &context);

			if (FUNC25(digest, sig, sizeof(digest))) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			*signature_len = FUNC27((const char*)digest, sizeof(digest), signature);
			break;
		}
		case PHAR_SIG_SHA256: {
			unsigned char digest[32];
			PHP_SHA256_CTX context;

			if (sig_len < sizeof(digest)) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			FUNC17(&context);
			read_len = end_of_phar;

			if ((size_t)read_len > sizeof(buf)) {
				read_size = sizeof(buf);
			} else {
				read_size = (size_t)read_len;
			}

			while ((len = FUNC31(fp, (char*)buf, read_size)) > 0) {
				FUNC18(&context, buf, len);
				read_len -= (zend_off_t)len;
				if ((size_t)read_len < read_size) {
					read_size = (size_t)read_len;
				}
			}

			FUNC16(digest, &context);

			if (FUNC25(digest, sig, sizeof(digest))) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			*signature_len = FUNC27((const char*)digest, sizeof(digest), signature);
			break;
		}
		case PHAR_SIG_SHA1: {
			unsigned char digest[20];
			PHP_SHA1_CTX  context;

			if (sig_len < sizeof(digest)) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			FUNC14(&context);
			read_len = end_of_phar;

			if ((size_t)read_len > sizeof(buf)) {
				read_size = sizeof(buf);
			} else {
				read_size = (size_t)read_len;
			}

			while ((len = FUNC31(fp, (char*)buf, read_size)) > 0) {
				FUNC15(&context, buf, len);
				read_len -= (zend_off_t)len;
				if ((size_t)read_len < read_size) {
					read_size = (size_t)read_len;
				}
			}

			FUNC13(digest, &context);

			if (FUNC25(digest, sig, sizeof(digest))) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			*signature_len = FUNC27((const char*)digest, sizeof(digest), signature);
			break;
		}
		case PHAR_SIG_MD5: {
			unsigned char digest[16];
			PHP_MD5_CTX   context;

			if (sig_len < sizeof(digest)) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			FUNC11(&context);
			read_len = end_of_phar;

			if ((size_t)read_len > sizeof(buf)) {
				read_size = sizeof(buf);
			} else {
				read_size = (size_t)read_len;
			}

			while ((len = FUNC31(fp, (char*)buf, read_size)) > 0) {
				FUNC12(&context, buf, len);
				read_len -= (zend_off_t)len;
				if ((size_t)read_len < read_size) {
					read_size = (size_t)read_len;
				}
			}

			FUNC10(digest, &context);

			if (FUNC25(digest, sig, sizeof(digest))) {
				if (error) {
					FUNC34(error, 0, "broken signature");
				}
				return FAILURE;
			}

			*signature_len = FUNC27((const char*)digest, sizeof(digest), signature);
			break;
		}
		default:
			if (error) {
				FUNC34(error, 0, "broken or unsupported signature");
			}
			return FAILURE;
	}
	return SUCCESS;
}