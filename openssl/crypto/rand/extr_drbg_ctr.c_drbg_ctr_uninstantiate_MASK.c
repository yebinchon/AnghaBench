#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  cipher; int /*<<< orphan*/  ctx_df; int /*<<< orphan*/  ctx; } ;
struct TYPE_5__ {TYPE_4__ ctr; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC3(RAND_DRBG *drbg)
{
    FUNC0(drbg->data.ctr.ctx);
    FUNC0(drbg->data.ctr.ctx_df);
    FUNC1(drbg->data.ctr.cipher);
    FUNC2(&drbg->data.ctr, sizeof(drbg->data.ctr));
    return 1;
}