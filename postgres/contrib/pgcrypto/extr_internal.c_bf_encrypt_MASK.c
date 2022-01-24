#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_4__ {int /*<<< orphan*/  bf; } ;
struct int_ctx {int mode; TYPE_1__ ctx; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  TYPE_2__ PX_Cipher ;
typedef  int /*<<< orphan*/  BlowfishContext ;

/* Variables and functions */
#define  MODE_CBC 129 
#define  MODE_ECB 128 
 int PXE_NOTBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int
FUNC3(PX_Cipher *c, const uint8 *data, unsigned dlen, uint8 *res)
{
	struct int_ctx *cx = (struct int_ctx *) c->ptr;
	BlowfishContext *bfctx = &cx->ctx.bf;

	if (dlen == 0)
		return 0;

	if (dlen & 7)
		return PXE_NOTBLOCKSIZE;

	FUNC2(res, data, dlen);
	switch (cx->mode)
	{
		case MODE_ECB:
			FUNC1(res, dlen, bfctx);
			break;
		case MODE_CBC:
			FUNC0(res, dlen, bfctx);
			break;
	}
	return 0;
}