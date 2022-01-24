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
struct TYPE_4__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  RSA_PSS_PARAMS ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_PCTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ EVP_PKEY_RSA_PSS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__ const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(BIO *bp, const X509_ALGOR *sigalg,
                         const ASN1_STRING *sig, int indent, ASN1_PCTX *pctx)
{
    if (FUNC1(sigalg->algorithm) == EVP_PKEY_RSA_PSS) {
        int rv;
        RSA_PSS_PARAMS *pss = FUNC4(sigalg);

        rv = FUNC5(bp, 0, pss, indent);
        FUNC2(pss);
        if (!rv)
            return 0;
    } else if (FUNC0(bp, "\n") <= 0) {
        return 0;
    }
    if (sig)
        return FUNC3(bp, sig, indent);
    return 1;
}