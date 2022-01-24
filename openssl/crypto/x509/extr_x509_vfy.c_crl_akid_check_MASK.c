#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int error_depth; int /*<<< orphan*/  untrusted; TYPE_1__* param; int /*<<< orphan*/  chain; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_9__ {int /*<<< orphan*/  akid; } ;
typedef  TYPE_3__ X509_CRL ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int CRL_SCORE_AKID ; 
 int CRL_SCORE_ISSUER_CERT ; 
 int CRL_SCORE_ISSUER_NAME ; 
 int CRL_SCORE_SAME_PATH ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int X509_V_FLAG_EXTENDED_CRL_SUPPORT ; 
 scalar_t__ X509_V_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(X509_STORE_CTX *ctx, X509_CRL *crl,
                           X509 **pissuer, int *pcrl_score)
{
    X509 *crl_issuer = NULL;
    X509_NAME *cnm = FUNC0(crl);
    int cidx = ctx->error_depth;
    int i;

    if (cidx != FUNC4(ctx->chain) - 1)
        cidx++;

    crl_issuer = FUNC5(ctx->chain, cidx);

    if (FUNC2(crl_issuer, crl->akid) == X509_V_OK) {
        if (*pcrl_score & CRL_SCORE_ISSUER_NAME) {
            *pcrl_score |= CRL_SCORE_AKID | CRL_SCORE_ISSUER_CERT;
            *pissuer = crl_issuer;
            return;
        }
    }

    for (cidx++; cidx < FUNC4(ctx->chain); cidx++) {
        crl_issuer = FUNC5(ctx->chain, cidx);
        if (FUNC1(FUNC3(crl_issuer), cnm))
            continue;
        if (FUNC2(crl_issuer, crl->akid) == X509_V_OK) {
            *pcrl_score |= CRL_SCORE_AKID | CRL_SCORE_SAME_PATH;
            *pissuer = crl_issuer;
            return;
        }
    }

    /* Anything else needs extended CRL support */

    if (!(ctx->param->flags & X509_V_FLAG_EXTENDED_CRL_SUPPORT))
        return;

    /*
     * Otherwise the CRL issuer is not on the path. Look for it in the set of
     * untrusted certificates.
     */
    for (i = 0; i < FUNC4(ctx->untrusted); i++) {
        crl_issuer = FUNC5(ctx->untrusted, i);
        if (FUNC1(FUNC3(crl_issuer), cnm))
            continue;
        if (FUNC2(crl_issuer, crl->akid) == X509_V_OK) {
            *pissuer = crl_issuer;
            *pcrl_score |= CRL_SCORE_AKID;
            return;
        }
    }
}