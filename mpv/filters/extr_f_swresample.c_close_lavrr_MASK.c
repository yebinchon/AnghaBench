#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct priv {int /*<<< orphan*/  pool_fmt; int /*<<< orphan*/  avrctx_fmt; int /*<<< orphan*/  pre_out_fmt; scalar_t__ avrctx_out; scalar_t__ avrctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct priv *p)
{
    if (p->avrctx)
        FUNC1(p->avrctx);
    FUNC2(&p->avrctx);
    if (p->avrctx_out)
        FUNC1(p->avrctx_out);
    FUNC2(&p->avrctx_out);

    FUNC0(&p->pre_out_fmt);
    FUNC0(&p->avrctx_fmt);
    FUNC0(&p->pool_fmt);
}