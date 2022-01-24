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
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_4__ {unsigned char* data; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  DSA_SIG ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  TYPE_1__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_PCTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(BIO *bp, const X509_ALGOR *sigalg,
                         const ASN1_STRING *sig, int indent, ASN1_PCTX *pctx)
{
    DSA_SIG *dsa_sig;
    const unsigned char *p;

    if (!sig) {
        if (FUNC1(bp, "\n") <= 0)
            return 0;
        else
            return 1;
    }
    p = sig->data;
    dsa_sig = FUNC6(NULL, &p, sig->length);
    if (dsa_sig) {
        int rv = 0;
        const BIGNUM *r, *s;

        FUNC4(dsa_sig, &r, &s);

        if (FUNC2(bp, "\n", 1) != 1)
            goto err;

        if (!FUNC0(bp, "r:   ", r, NULL, indent))
            goto err;
        if (!FUNC0(bp, "s:   ", s, NULL, indent))
            goto err;
        rv = 1;
 err:
        FUNC3(dsa_sig);
        return rv;
    }
    if (FUNC1(bp, "\n") <= 0)
        return 0;
    return FUNC5(bp, sig, indent);
}