#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  UI_METHOD ;
struct TYPE_5__ {char const* password; char const* prompt_info; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_1__ PW_CB_DATA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_ASN1RSA ; 
 int FORMAT_ENGINE ; 
 int FORMAT_MSBLOB ; 
 int FORMAT_PEM ; 
 int FORMAT_PEMRSA ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ password_callback ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

EVP_PKEY *FUNC16(const char *file, int format, int maybe_stdin,
                      const char *pass, ENGINE *e, const char *key_descrip)
{
    BIO *key = NULL;
    EVP_PKEY *pkey = NULL;
    PW_CB_DATA cb_data;

    cb_data.password = pass;
    cb_data.prompt_info = file;

    if (file == NULL && (!maybe_stdin || format == FORMAT_ENGINE)) {
        FUNC1(bio_err, "no keyfile specified\n");
        goto end;
    }
    if (format == FORMAT_ENGINE) {
        if (e == NULL) {
            FUNC1(bio_err, "no engine specified\n");
        } else {
#ifndef OPENSSL_NO_ENGINE
            pkey = FUNC2(e, file, (UI_METHOD *)FUNC14(),
                                          &cb_data);
            if (pkey == NULL) {
                FUNC1(bio_err, "cannot load %s from engine\n", key_descrip);
                FUNC3(bio_err);
            }
#else
            BIO_printf(bio_err, "engines not supported\n");
#endif
        }
        goto end;
    }
    if (file == NULL && maybe_stdin) {
        FUNC15(stdin);
        key = FUNC13(format);
    } else {
        key = FUNC10(file, 'r', format);
    }
    if (key == NULL)
        goto end;
    if (format == FORMAT_ASN1) {
        pkey = FUNC11(key, NULL);
    } else if (format == FORMAT_ASN1RSA) {
#ifndef OPENSSL_NO_RSA
        RSA *rsa;
        rsa = FUNC12(key, NULL);
        if (rsa) {
            pkey = FUNC4();
            if (pkey != NULL)
                FUNC5(pkey, rsa);
            FUNC8(rsa);
        } else
#else
        BIO_printf(bio_err, "RSA keys not supported\n");
#endif
            pkey = NULL;
    } else if (format == FORMAT_PEMRSA) {
#ifndef OPENSSL_NO_RSA
        RSA *rsa;
        rsa = FUNC7(key, NULL,
                                        (pem_password_cb *)password_callback,
                                        &cb_data);
        if (rsa != NULL) {
            pkey = FUNC4();
            if (pkey != NULL)
                FUNC5(pkey, rsa);
            FUNC8(rsa);
        } else
#else
        BIO_printf(bio_err, "RSA keys not supported\n");
#endif
            pkey = NULL;
    } else if (format == FORMAT_PEM) {
        pkey = FUNC6(key, NULL,
                                   (pem_password_cb *)password_callback,
                                   &cb_data);
#if !defined(OPENSSL_NO_RSA) && !defined(OPENSSL_NO_DSA)
    } else if (format == FORMAT_MSBLOB) {
        pkey = FUNC9(key);
#endif
    }
 end:
    FUNC0(key);
    if (pkey == NULL)
        FUNC1(bio_err, "unable to load %s\n", key_descrip);
    return pkey;
}