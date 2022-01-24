#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_12__ {void* default_passwd_callback_userdata; int /*<<< orphan*/ * default_passwd_callback; } ;
struct TYPE_11__ {void* default_passwd_callback_userdata; int /*<<< orphan*/ * default_passwd_callback; } ;
typedef  TYPE_1__ SSL_CTX ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ ERR_LIB_PEM ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  ERR_R_PEM_LIB ; 
 int /*<<< orphan*/  ERR_R_SYS_LIB ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 unsigned long FUNC8 () ; 
 scalar_t__ PEM_R_NO_START_LINE ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_F_USE_CERTIFICATE_CHAIN_FILE ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(SSL_CTX *ctx, SSL *ssl, const char *file)
{
    BIO *in;
    int ret = 0;
    X509 *x = NULL;
    pem_password_cb *passwd_callback;
    void *passwd_callback_userdata;

    FUNC6();          /* clear error stack for
                                 * SSL_CTX_use_certificate() */

    if (ctx != NULL) {
        passwd_callback = ctx->default_passwd_callback;
        passwd_callback_userdata = ctx->default_passwd_callback_userdata;
    } else {
        passwd_callback = ssl->default_passwd_callback;
        passwd_callback_userdata = ssl->default_passwd_callback_userdata;
    }

    in = FUNC1(FUNC3());
    if (in == NULL) {
        FUNC17(SSL_F_USE_CERTIFICATE_CHAIN_FILE, ERR_R_BUF_LIB);
        goto end;
    }

    if (FUNC2(in, file) <= 0) {
        FUNC17(SSL_F_USE_CERTIFICATE_CHAIN_FILE, ERR_R_SYS_LIB);
        goto end;
    }

    x = FUNC10(in, NULL, passwd_callback,
                              passwd_callback_userdata);
    if (x == NULL) {
        FUNC17(SSL_F_USE_CERTIFICATE_CHAIN_FILE, ERR_R_PEM_LIB);
        goto end;
    }

    if (ctx)
        ret = FUNC13(ctx, x);
    else
        ret = FUNC16(ssl, x);

    if (FUNC7() != 0)
        ret = 0;                /* Key/certificate mismatch doesn't imply
                                 * ret==0 ... */
    if (ret) {
        /*
         * If we could set up our certificate, now proceed to the CA
         * certificates.
         */
        X509 *ca;
        int r;
        unsigned long err;

        if (ctx)
            r = FUNC12(ctx);
        else
            r = FUNC15(ssl);

        if (r == 0) {
            ret = 0;
            goto end;
        }

        while ((ca = FUNC9(in, NULL, passwd_callback,
                                       passwd_callback_userdata))
               != NULL) {
            if (ctx)
                r = FUNC11(ctx, ca);
            else
                r = FUNC14(ssl, ca);
            /*
             * Note that we must not free ca if it was successfully added to
             * the chain (while we must free the main certificate, since its
             * reference count is increased by SSL_CTX_use_certificate).
             */
            if (!r) {
                FUNC18(ca);
                ret = 0;
                goto end;
            }
        }
        /* When the while loop ends, it's usually just EOF. */
        err = FUNC8();
        if (FUNC4(err) == ERR_LIB_PEM
            && FUNC5(err) == PEM_R_NO_START_LINE)
            FUNC6();
        else
            ret = 0;            /* some real error */
    }

 end:
    FUNC18(x);
    FUNC0(in);
    return ret;
}