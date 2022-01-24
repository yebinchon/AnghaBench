#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  default_passwd_callback_userdata; int /*<<< orphan*/  default_passwd_callback; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int ERR_R_ASN1_LIB ; 
 int ERR_R_BUF_LIB ; 
 int ERR_R_PEM_LIB ; 
 int ERR_R_SYS_LIB ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int SSL_FILETYPE_ASN1 ; 
 int SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  SSL_F_SSL_USE_RSAPRIVATEKEY_FILE ; 
 int SSL_R_BAD_SSL_FILETYPE ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(SSL *ssl, const char *file, int type)
{
    int j, ret = 0;
    BIO *in;
    RSA *rsa = NULL;

    in = FUNC1(FUNC3());
    if (in == NULL) {
        FUNC7(SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, ERR_R_BUF_LIB);
        goto end;
    }

    if (FUNC2(in, file) <= 0) {
        FUNC7(SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, ERR_R_SYS_LIB);
        goto end;
    }
    if (type == SSL_FILETYPE_ASN1) {
        j = ERR_R_ASN1_LIB;
        rsa = FUNC8(in, NULL);
    } else if (type == SSL_FILETYPE_PEM) {
        j = ERR_R_PEM_LIB;
        rsa = FUNC4(in, NULL,
                                         ssl->default_passwd_callback,
                                         ssl->default_passwd_callback_userdata);
    } else {
        FUNC7(SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, SSL_R_BAD_SSL_FILETYPE);
        goto end;
    }
    if (rsa == NULL) {
        FUNC7(SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, j);
        goto end;
    }
    ret = FUNC6(ssl, rsa);
    FUNC5(rsa);
 end:
    FUNC0(in);
    return ret;
}