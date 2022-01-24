#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  get_entropy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ex_data; int /*<<< orphan*/  get_entropy; } ;
typedef  TYPE_1__ RAND_DRBG ;
typedef  TYPE_2__ HOOK_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_RAND_DRBG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(RAND_DRBG *drbg)
{
    HOOK_CTX *ctx = FUNC1(drbg);

    drbg->get_entropy = ctx->get_entropy;
    FUNC0(CRYPTO_EX_INDEX_RAND_DRBG, drbg, &drbg->ex_data);
}