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
typedef  int uint8 ;
struct EncStat {int /*<<< orphan*/ * ciph; } ;
struct TYPE_2__ {scalar_t__ disable_mdc; int /*<<< orphan*/  sess_key_len; int /*<<< orphan*/  sess_key; int /*<<< orphan*/  cipher_algo; } ;
typedef  int /*<<< orphan*/  PushFilter ;
typedef  TYPE_1__ PGP_Context ;
typedef  int /*<<< orphan*/  PGP_CFB ;

/* Variables and functions */
 int ENCBUF ; 
 int /*<<< orphan*/  FUNC0 (struct EncStat*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 struct EncStat* FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(PushFilter *next, void *init_arg, void **priv_p)
{
	struct EncStat *st;
	PGP_Context *ctx = init_arg;
	PGP_CFB    *ciph;
	int			resync = 1;
	int			res;

	/* should we use newer packet format? */
	if (ctx->disable_mdc == 0)
	{
		uint8		ver = 1;

		resync = 0;
		res = FUNC2(next, &ver, 1);
		if (res < 0)
			return res;
	}
	res = FUNC1(&ciph, ctx->cipher_algo,
						 ctx->sess_key, ctx->sess_key_len, resync, NULL);
	if (res < 0)
		return res;

	st = FUNC3(sizeof(*st));
	FUNC0(st, 0, sizeof(*st));
	st->ciph = ciph;

	*priv_p = st;
	return ENCBUF;
}