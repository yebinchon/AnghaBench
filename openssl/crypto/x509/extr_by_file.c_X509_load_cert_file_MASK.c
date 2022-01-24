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
struct TYPE_3__ {int /*<<< orphan*/  store_ctx; } ;
typedef  TYPE_1__ X509_LOOKUP ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_PEM_LIB ; 
 int /*<<< orphan*/  ERR_R_SYS_LIB ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ PEM_R_NO_START_LINE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int X509_FILETYPE_ASN1 ; 
 int X509_FILETYPE_PEM ; 
 int /*<<< orphan*/  X509_F_X509_LOAD_CERT_FILE ; 
 int /*<<< orphan*/  X509_R_BAD_X509_FILETYPE ; 
 int /*<<< orphan*/  X509_R_NO_CERTIFICATE_FOUND ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC12(X509_LOOKUP *ctx, const char *file, int type)
{
    int ret = 0;
    BIO *in = NULL;
    int i, count = 0;
    X509 *x = NULL;

    in = FUNC1(FUNC3());

    if ((in == NULL) || (FUNC2(in, file) <= 0)) {
        FUNC10(X509_F_X509_LOAD_CERT_FILE, ERR_R_SYS_LIB);
        goto err;
    }

    if (type == X509_FILETYPE_PEM) {
        for (;;) {
            x = FUNC7(in, NULL, NULL, "");
            if (x == NULL) {
                if ((FUNC4(FUNC6()) ==
                     PEM_R_NO_START_LINE) && (count > 0)) {
                    FUNC5();
                    break;
                } else {
                    FUNC10(X509_F_X509_LOAD_CERT_FILE, ERR_R_PEM_LIB);
                    goto err;
                }
            }
            i = FUNC8(ctx->store_ctx, x);
            if (!i)
                goto err;
            count++;
            FUNC9(x);
            x = NULL;
        }
        ret = count;
    } else if (type == X509_FILETYPE_ASN1) {
        x = FUNC11(in, NULL);
        if (x == NULL) {
            FUNC10(X509_F_X509_LOAD_CERT_FILE, ERR_R_ASN1_LIB);
            goto err;
        }
        i = FUNC8(ctx->store_ctx, x);
        if (!i)
            goto err;
        ret = i;
    } else {
        FUNC10(X509_F_X509_LOAD_CERT_FILE, X509_R_BAD_X509_FILETYPE);
        goto err;
    }
    if (ret == 0)
        FUNC10(X509_F_X509_LOAD_CERT_FILE, X509_R_NO_CERTIFICATE_FOUND);
 err:
    FUNC9(x);
    FUNC0(in);
    return ret;
}