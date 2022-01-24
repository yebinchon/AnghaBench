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
struct TYPE_4__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {int sess_key_len; int /*<<< orphan*/ * sess_key; TYPE_1__ s2k; int /*<<< orphan*/  s2k_cipher_algo; int /*<<< orphan*/  cipher_algo; } ;
typedef  TYPE_2__ PGP_Context ;
typedef  int /*<<< orphan*/  PGP_CFB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(PGP_Context *ctx, uint8 *dst)
{
	int			res;
	PGP_CFB    *cfb;
	uint8		algo = ctx->cipher_algo;

	res = FUNC0(&cfb, ctx->s2k_cipher_algo,
						 ctx->s2k.key, ctx->s2k.key_len, 0, NULL);
	if (res < 0)
		return res;

	FUNC1(cfb, &algo, 1, dst);
	FUNC1(cfb, ctx->sess_key, ctx->sess_key_len, dst + 1);

	FUNC2(cfb);
	return ctx->sess_key_len + 1;
}