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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {int /*<<< orphan*/  default_passwd_callback_userdata; int /*<<< orphan*/  default_passwd_callback; } ;
typedef  TYPE_1__ SSL_CTX ;
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
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int SSL_FILETYPE_ASN1 ; 
 int SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  SSL_F_SSL_CTX_USE_CERTIFICATE_FILE ; 
 int SSL_R_BAD_SSL_FILETYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(SSL_CTX *ctx, const char *file, int type)
{
    int j;
    BIO *in;
    int ret = 0;
    X509 *x = NULL;

    in = FUNC1(FUNC3());
    if (in == NULL) {
        FUNC6(SSL_F_SSL_CTX_USE_CERTIFICATE_FILE, ERR_R_BUF_LIB);
        goto end;
    }

    if (FUNC2(in, file) <= 0) {
        FUNC6(SSL_F_SSL_CTX_USE_CERTIFICATE_FILE, ERR_R_SYS_LIB);
        goto end;
    }
    if (type == SSL_FILETYPE_ASN1) {
        j = ERR_R_ASN1_LIB;
        x = FUNC8(in, NULL);
    } else if (type == SSL_FILETYPE_PEM) {
        j = ERR_R_PEM_LIB;
        x = FUNC4(in, NULL, ctx->default_passwd_callback,
                              ctx->default_passwd_callback_userdata);
    } else {
        FUNC6(SSL_F_SSL_CTX_USE_CERTIFICATE_FILE, SSL_R_BAD_SSL_FILETYPE);
        goto end;
    }

    if (x == NULL) {
        FUNC6(SSL_F_SSL_CTX_USE_CERTIFICATE_FILE, j);
        goto end;
    }

    ret = FUNC5(ctx, x);
 end:
    FUNC7(x);
    FUNC0(in);
    return ret;
}