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
typedef  int /*<<< orphan*/  uint8 ;
struct MDCBufData {int avail; TYPE_1__* ctx; int /*<<< orphan*/ * pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdc_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct MDCBufData *st, uint8 *src, int len)
{
	uint8	   *dst = st->pos + st->avail;

	FUNC0(dst, src, len);
	FUNC1(st->ctx->mdc_ctx, src, len);
	st->avail += len;
}