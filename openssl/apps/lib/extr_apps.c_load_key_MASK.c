#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UI_METHOD ;
struct TYPE_6__ {char const* password; char const* prompt_info; } ;
typedef  TYPE_1__ PW_CB_DATA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_ENGINE ; 
 int FORMAT_MSBLOB ; 
 int FORMAT_PEM ; 
 int FORMAT_PKCS12 ; 
 int FORMAT_PVK ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wrap_password_callback ; 

EVP_PKEY *FUNC15(const char *file, int format, int maybe_stdin,
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
            if (FUNC3(e)) {
                pkey = FUNC4(e, file,
                                               (UI_METHOD *)FUNC12(),
                                               &cb_data);
                FUNC2(e);
            }
            if (pkey == NULL) {
                FUNC1(bio_err, "cannot load %s from engine\n", key_descrip);
                FUNC5(bio_err);
            }
#else
            BIO_printf(bio_err, "engines not supported\n");
#endif
        }
        goto end;
    }
    if (file == NULL && maybe_stdin) {
        FUNC14(stdin);
        key = FUNC11(format);
    } else {
        key = FUNC9(file, 'r', format);
    }
    if (key == NULL)
        goto end;
    if (format == FORMAT_ASN1) {
        pkey = FUNC10(key, NULL);
    } else if (format == FORMAT_PEM) {
        pkey = FUNC6(key, NULL, wrap_password_callback, &cb_data);
    } else if (format == FORMAT_PKCS12) {
        if (!FUNC13(key, key_descrip, wrap_password_callback, &cb_data,
                         &pkey, NULL, NULL))
            goto end;
#if !defined(OPENSSL_NO_RSA) && !defined(OPENSSL_NO_DSA) && !defined (OPENSSL_NO_RC4)
    } else if (format == FORMAT_MSBLOB) {
        pkey = FUNC8(key);
    } else if (format == FORMAT_PVK) {
        pkey = FUNC7(key, wrap_password_callback, &cb_data);
#endif
    } else {
        FUNC1(bio_err, "bad input format specified for key file\n");
        goto end;
    }
 end:
    FUNC0(key);
    if (pkey == NULL) {
        FUNC1(bio_err, "unable to load %s\n", key_descrip);
        FUNC5(bio_err);
    }
    return pkey;
}