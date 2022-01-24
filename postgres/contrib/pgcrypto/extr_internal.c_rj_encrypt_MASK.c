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
typedef  int /*<<< orphan*/  const uint8 ;
struct TYPE_4__ {int /*<<< orphan*/  rj; } ;
struct int_ctx {scalar_t__ mode; TYPE_1__ ctx; int /*<<< orphan*/  const* iv; int /*<<< orphan*/  is_init; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  TYPE_2__ PX_Cipher ;

/* Variables and functions */
 scalar_t__ MODE_CBC ; 
 int PXE_CIPHER_INIT ; 
 int PXE_NOTBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (struct int_ctx*,int) ; 

__attribute__((used)) static int
FUNC4(PX_Cipher *c, const uint8 *data, unsigned dlen, uint8 *res)
{
	struct int_ctx *cx = (struct int_ctx *) c->ptr;

	if (!cx->is_init)
	{
		if (FUNC3(cx, 1))
			return PXE_CIPHER_INIT;
	}

	if (dlen == 0)
		return 0;

	if (dlen & 15)
		return PXE_NOTBLOCKSIZE;

	FUNC2(res, data, dlen);

	if (cx->mode == MODE_CBC)
	{
		FUNC0(&cx->ctx.rj, cx->iv, res, dlen);
		FUNC2(cx->iv, res + dlen - 16, 16);
	}
	else
		FUNC1(&cx->ctx.rj, res, dlen);

	return 0;
}