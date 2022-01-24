#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int droprec; scalar_t__ dropepoch; struct TYPE_7__* pkts; } ;
typedef  TYPE_1__ MEMPACKET_TEST_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 () ; 

__attribute__((used)) static int FUNC6(BIO *bio)
{
    MEMPACKET_TEST_CTX *ctx;

    if (!FUNC4(ctx = FUNC3(sizeof(*ctx))))
        return 0;
    if (!FUNC4(ctx->pkts = FUNC5())) {
        FUNC2(ctx);
        return 0;
    }
    ctx->dropepoch = 0;
    ctx->droprec = -1;
    FUNC1(bio, 1);
    FUNC0(bio, ctx);
    return 1;
}