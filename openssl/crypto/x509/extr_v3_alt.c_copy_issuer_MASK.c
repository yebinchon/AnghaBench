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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_3__ {scalar_t__ flags; int /*<<< orphan*/  issuer_cert; } ;
typedef  TYPE_1__ X509V3_CTX ;
typedef  int /*<<< orphan*/  GENERAL_NAMES ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;

/* Variables and functions */
 scalar_t__ CTX_TEST ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509V3_F_COPY_ISSUER ; 
 int /*<<< orphan*/  X509V3_R_ISSUER_DECODE_ERROR ; 
 int /*<<< orphan*/  X509V3_R_NO_ISSUER_DETAILS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(X509V3_CTX *ctx, GENERAL_NAMES *gens)
{
    GENERAL_NAMES *ialt;
    GENERAL_NAME *gen;
    X509_EXTENSION *ext;
    int i, num;

    if (ctx && (ctx->flags == CTX_TEST))
        return 1;
    if (!ctx || !ctx->issuer_cert) {
        FUNC1(X509V3_F_COPY_ISSUER, X509V3_R_NO_ISSUER_DETAILS);
        goto err;
    }
    i = FUNC3(ctx->issuer_cert, NID_subject_alt_name, -1);
    if (i < 0)
        return 1;
    if ((ext = FUNC2(ctx->issuer_cert, i)) == NULL
        || (ialt = FUNC0(ext)) == NULL) {
        FUNC1(X509V3_F_COPY_ISSUER, X509V3_R_ISSUER_DECODE_ERROR);
        goto err;
    }

    num = FUNC5(ialt);
    if (!FUNC7(gens, num)) {
        FUNC1(X509V3_F_COPY_ISSUER, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    for (i = 0; i < num; i++) {
        gen = FUNC8(ialt, i);
        FUNC6(gens, gen);     /* no failure as it was reserved */
    }
    FUNC4(ialt);

    return 1;

 err:
    return 0;

}