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
struct TYPE_3__ {int /*<<< orphan*/ * statusString; } ;
typedef  int /*<<< orphan*/  OSSL_CMP_PKIFREETEXT ;
typedef  TYPE_1__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_UTF8STRING_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(OSSL_CMP_CTX *ctx,
                                   OSSL_CMP_PKIFREETEXT *text)
{
    if (!FUNC0(ctx != NULL))
        return 0;
    FUNC1(ctx->statusString, ASN1_UTF8STRING_free);
    ctx->statusString = text;
    return 1;
}