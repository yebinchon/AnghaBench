#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct MDCBufData {TYPE_1__* ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mdc_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MDCBufData*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct MDCBufData*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void *priv)
{
	struct MDCBufData *st = priv;

	FUNC1(st->ctx->mdc_ctx);
	st->ctx->mdc_ctx = NULL;
	FUNC2(st, 0, sizeof(*st));
	FUNC0(st);
}