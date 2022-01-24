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
struct TYPE_4__ {int nlast_block; int /*<<< orphan*/  last_block; int /*<<< orphan*/  tbl; int /*<<< orphan*/  k2; int /*<<< orphan*/  k1; int /*<<< orphan*/  cctx; } ;
typedef  TYPE_1__ CMAC_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(CMAC_CTX *out, const CMAC_CTX *in)
{
    int bl;

    if (in->nlast_block == -1)
        return 0;
    if ((bl = FUNC0(in->cctx)) < 0)
        return 0;
    if (!FUNC1(out->cctx, in->cctx))
        return 0;
    FUNC2(out->k1, in->k1, bl);
    FUNC2(out->k2, in->k2, bl);
    FUNC2(out->tbl, in->tbl, bl);
    FUNC2(out->last_block, in->last_block, bl);
    out->nlast_block = in->nlast_block;
    return 1;
}