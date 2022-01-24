#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_6__ {int /*<<< orphan*/  senderNonce; } ;
struct TYPE_5__ {TYPE_2__* cmp_ctx; int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ CMP_HDR_TEST_FIXTURE ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(CMP_HDR_TEST_FIXTURE *fixture)
{
    X509_NAME *sender = FUNC6();
    ASN1_OCTET_STRING *sn;

    if (!FUNC3(sender))
        return 0;

    FUNC4(sender, "CN", "A common sender name");
    if (!FUNC2(FUNC1(fixture->cmp_ctx, sender),
                     1))
        return 0;
    if (!FUNC2(FUNC8(fixture->cmp_ctx, fixture->hdr),
                     1))
        return 0;
    sn = FUNC7(fixture->hdr);
    if (!FUNC2(FUNC0(fixture->cmp_ctx->senderNonce, sn),
                     0))
        return 0;
    FUNC5(sender);
    return 1;
}