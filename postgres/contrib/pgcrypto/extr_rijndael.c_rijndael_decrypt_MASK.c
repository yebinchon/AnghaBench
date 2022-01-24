#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u4byte ;
struct TYPE_3__ {int k_len; int* e_key; int* d_key; } ;
typedef  TYPE_1__ rijndael_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 int FUNC2 (int const) ; 

void
FUNC3(rijndael_ctx *ctx, const u4byte *in_blk, u4byte *out_blk)
{
	u4byte		b0[4],
				b1[4],
			   *kp;
	u4byte		k_len = ctx->k_len;
	u4byte	   *e_key = ctx->e_key;
	u4byte	   *d_key = ctx->d_key;

	b0[0] = FUNC2(in_blk[0]) ^ e_key[4 * k_len + 24];
	b0[1] = FUNC2(in_blk[1]) ^ e_key[4 * k_len + 25];
	b0[2] = FUNC2(in_blk[2]) ^ e_key[4 * k_len + 26];
	b0[3] = FUNC2(in_blk[3]) ^ e_key[4 * k_len + 27];

	kp = d_key + 4 * (k_len + 5);

	if (k_len > 6)
	{
		FUNC1(b1, b0, kp);
		FUNC1(b0, b1, kp);
	}

	if (k_len > 4)
	{
		FUNC1(b1, b0, kp);
		FUNC1(b0, b1, kp);
	}

	FUNC1(b1, b0, kp);
	FUNC1(b0, b1, kp);
	FUNC1(b1, b0, kp);
	FUNC1(b0, b1, kp);
	FUNC1(b1, b0, kp);
	FUNC1(b0, b1, kp);
	FUNC1(b1, b0, kp);
	FUNC1(b0, b1, kp);
	FUNC1(b1, b0, kp);
	FUNC0(b0, b1, kp);

	out_blk[0] = FUNC2(b0[0]);
	out_blk[1] = FUNC2(b0[1]);
	out_blk[2] = FUNC2(b0[2]);
	out_blk[3] = FUNC2(b0[3]);
}