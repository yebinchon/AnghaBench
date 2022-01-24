#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_3__ {unsigned char* signature; int sig_flags; int /*<<< orphan*/  sig_len; int /*<<< orphan*/  fname; } ;
typedef  TYPE_1__ phar_archive_data ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  PHP_SHA512_CTX ;
typedef  int /*<<< orphan*/  PHP_SHA256_CTX ;
typedef  int /*<<< orphan*/  PHP_SHA1_CTX ;
typedef  int /*<<< orphan*/  PHP_MD5_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FAILURE ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
#define  PHAR_SIG_MD5 132 
#define  PHAR_SIG_OPENSSL 131 
#define  PHAR_SIG_SHA1 130 
#define  PHAR_SIG_SHA256 129 
#define  PHAR_SIG_SHA512 128 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC24 (unsigned char*) ; 
 unsigned char* FUNC25 (unsigned int) ; 
 char* FUNC26 (char*,int) ; 
 int /*<<< orphan*/  openssl_privatekey ; 
 int /*<<< orphan*/  openssl_privatekey_len ; 
 int FUNC27 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC28 (char const*,size_t,unsigned char**) ; 
 size_t FUNC29 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (char**,int /*<<< orphan*/ ,char*,...) ; 

int FUNC34(phar_archive_data *phar, php_stream *fp, char **signature, size_t *signature_length, char **error) /* {{{ */
{
	unsigned char buf[1024];
	size_t sig_len;

	FUNC30(fp);

	if (phar->signature) {
		FUNC24(phar->signature);
		phar->signature = NULL;
	}

	switch(phar->sig_flags) {
		case PHAR_SIG_SHA512: {
			unsigned char digest[64];
			PHP_SHA512_CTX context;

			FUNC22(&context);

			while ((sig_len = FUNC29(fp, (char*)buf, sizeof(buf))) > 0) {
				FUNC23(&context, buf, sig_len);
			}

			FUNC21(digest, &context);
			*signature = FUNC26((char *) digest, 64);
			*signature_length = 64;
			break;
		}
		case PHAR_SIG_SHA256: {
			unsigned char digest[32];
			PHP_SHA256_CTX  context;

			FUNC19(&context);

			while ((sig_len = FUNC29(fp, (char*)buf, sizeof(buf))) > 0) {
				FUNC20(&context, buf, sig_len);
			}

			FUNC18(digest, &context);
			*signature = FUNC26((char *) digest, 32);
			*signature_length = 32;
			break;
		}
		case PHAR_SIG_OPENSSL: {
			unsigned char *sigbuf;
#ifdef PHAR_HAVE_OPENSSL
			unsigned int siglen;
			BIO *in;
			EVP_PKEY *key;
			EVP_MD_CTX *md_ctx;

			in = BIO_new_mem_buf(PHAR_G(openssl_privatekey), PHAR_G(openssl_privatekey_len));

			if (in == NULL) {
				if (error) {
					spprintf(error, 0, "unable to write to phar \"%s\" with requested openssl signature", phar->fname);
				}
				return FAILURE;
			}

			key = PEM_read_bio_PrivateKey(in, NULL,NULL, "");
			BIO_free(in);

			if (!key) {
				if (error) {
					spprintf(error, 0, "unable to process private key");
				}
				return FAILURE;
			}

			md_ctx = EVP_MD_CTX_create();

			siglen = EVP_PKEY_size(key);
			sigbuf = emalloc(siglen + 1);

			if (!EVP_SignInit(md_ctx, EVP_sha1())) {
				EVP_PKEY_free(key);
				efree(sigbuf);
				if (error) {
					spprintf(error, 0, "unable to initialize openssl signature for phar \"%s\"", phar->fname);
				}
				return FAILURE;
			}

			while ((sig_len = php_stream_read(fp, (char*)buf, sizeof(buf))) > 0) {
				if (!EVP_SignUpdate(md_ctx, buf, sig_len)) {
					EVP_PKEY_free(key);
					efree(sigbuf);
					if (error) {
						spprintf(error, 0, "unable to update the openssl signature for phar \"%s\"", phar->fname);
					}
					return FAILURE;
				}
			}

			if (!EVP_SignFinal (md_ctx, sigbuf, &siglen, key)) {
				EVP_PKEY_free(key);
				efree(sigbuf);
				if (error) {
					spprintf(error, 0, "unable to write phar \"%s\" with requested openssl signature", phar->fname);
				}
				return FAILURE;
			}

			sigbuf[siglen] = '\0';
			EVP_PKEY_free(key);
			EVP_MD_CTX_destroy(md_ctx);
#else
			size_t siglen;
			sigbuf = NULL;
			siglen = 0;
			FUNC31(fp, 0, SEEK_END);

			if (FAILURE == FUNC27(1, fp, FUNC32(fp), FUNC11(openssl_privatekey), FUNC11(openssl_privatekey_len), (char **)&sigbuf, &siglen)) {
				if (error) {
					FUNC33(error, 0, "unable to write phar \"%s\" with requested openssl signature", phar->fname);
				}
				return FAILURE;
			}
#endif
			*signature = (char *) sigbuf;
			*signature_length = siglen;
		}
		break;
		default:
			phar->sig_flags = PHAR_SIG_SHA1;
		case PHAR_SIG_SHA1: {
			unsigned char digest[20];
			PHP_SHA1_CTX  context;

			FUNC16(&context);

			while ((sig_len = FUNC29(fp, (char*)buf, sizeof(buf))) > 0) {
				FUNC17(&context, buf, sig_len);
			}

			FUNC15(digest, &context);
			*signature = FUNC26((char *) digest, 20);
			*signature_length = 20;
			break;
		}
		case PHAR_SIG_MD5: {
			unsigned char digest[16];
			PHP_MD5_CTX   context;

			FUNC13(&context);

			while ((sig_len = FUNC29(fp, (char*)buf, sizeof(buf))) > 0) {
				FUNC14(&context, buf, sig_len);
			}

			FUNC12(digest, &context);
			*signature = FUNC26((char *) digest, 16);
			*signature_length = 16;
			break;
		}
	}

	phar->sig_len = FUNC28((const char *)*signature, *signature_length, &phar->signature);
	return SUCCESS;
}