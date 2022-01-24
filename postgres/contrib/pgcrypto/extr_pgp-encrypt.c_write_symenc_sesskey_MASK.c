#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_5__ {int mode; int /*<<< orphan*/  iter; int /*<<< orphan*/  salt; int /*<<< orphan*/  digest_algo; } ;
struct TYPE_6__ {scalar_t__ use_sess_key; TYPE_1__ s2k; int /*<<< orphan*/  s2k_cipher_algo; } ;
typedef  int /*<<< orphan*/  PushFilter ;
typedef  TYPE_2__ PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  PGP_PKT_SYMENCRYPTED_SESSKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(PGP_Context *ctx, PushFilter *dst)
{
	uint8		pkt[256];
	int			pktlen;
	int			res;
	uint8	   *p = pkt;

	*p++ = 4;					/* 5.3 - version number  */
	*p++ = ctx->s2k_cipher_algo;

	*p++ = ctx->s2k.mode;
	*p++ = ctx->s2k.digest_algo;
	if (ctx->s2k.mode > 0)
	{
		FUNC0(p, ctx->s2k.salt, 8);
		p += 8;
	}
	if (ctx->s2k.mode == 3)
		*p++ = ctx->s2k.iter;

	if (ctx->use_sess_key)
	{
		res = FUNC3(ctx, p);
		if (res < 0)
			return res;
		p += res;
	}

	pktlen = p - pkt;
	res = FUNC4(dst, PGP_PKT_SYMENCRYPTED_SESSKEY, pktlen);
	if (res >= 0)
		res = FUNC1(dst, pkt, pktlen);

	FUNC2(pkt, 0, pktlen);
	return res;
}