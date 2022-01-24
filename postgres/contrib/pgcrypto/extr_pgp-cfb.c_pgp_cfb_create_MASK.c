#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_5__ {int resync; int /*<<< orphan*/  block_size; int /*<<< orphan*/  fr; int /*<<< orphan*/ * ciph; } ;
typedef  int /*<<< orphan*/  PX_Cipher ;
typedef  TYPE_1__ PGP_CFB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 

int
FUNC7(PGP_CFB **ctx_p, int algo, const uint8 *key, int key_len,
			   int resync, uint8 *iv)
{
	int			res;
	PX_Cipher  *ciph;
	PGP_CFB    *ctx;

	res = FUNC2(algo, &ciph);
	if (res < 0)
		return res;

	res = FUNC6(ciph, key, key_len, NULL);
	if (res < 0)
	{
		FUNC5(ciph);
		return res;
	}

	ctx = FUNC3(sizeof(*ctx));
	FUNC1(ctx, 0, sizeof(*ctx));
	ctx->ciph = ciph;
	ctx->block_size = FUNC4(ciph);
	ctx->resync = resync;

	if (iv)
		FUNC0(ctx->fr, iv, ctx->block_size);

	*ctx_p = ctx;
	return 0;
}