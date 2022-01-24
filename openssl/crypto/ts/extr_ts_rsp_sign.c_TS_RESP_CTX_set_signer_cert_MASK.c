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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {int /*<<< orphan*/ * signer_cert; } ;
typedef  TYPE_1__ TS_RESP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  TS_F_TS_RESP_CTX_SET_SIGNER_CERT ; 
 int /*<<< orphan*/  TS_R_INVALID_SIGNER_CERTIFICATE_PURPOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_PURPOSE_TIMESTAMP_SIGN ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(TS_RESP_CTX *ctx, X509 *signer)
{
    if (FUNC1(signer, X509_PURPOSE_TIMESTAMP_SIGN, 0) != 1) {
        FUNC0(TS_F_TS_RESP_CTX_SET_SIGNER_CERT,
              TS_R_INVALID_SIGNER_CERTIFICATE_PURPOSE);
        return 0;
    }
    FUNC2(ctx->signer_cert);
    ctx->signer_cert = signer;
    FUNC3(ctx->signer_cert);
    return 1;
}