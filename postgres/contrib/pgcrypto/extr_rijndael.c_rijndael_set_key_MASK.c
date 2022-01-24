#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u4byte ;
struct TYPE_4__ {int* e_key; int* d_key; int decrypt; int k_len; } ;
typedef  TYPE_1__ rijndael_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  tab_gen ; 

rijndael_ctx *
FUNC6(rijndael_ctx *ctx, const u4byte *in_key, const u4byte key_len,
				 int encrypt)
{
	u4byte		i,
				t,
				u,
				v,
				w;
	u4byte	   *e_key = ctx->e_key;
	u4byte	   *d_key = ctx->d_key;

	ctx->decrypt = !encrypt;

	if (!tab_gen)
		FUNC0();

	ctx->k_len = (key_len + 31) / 32;

	e_key[0] = FUNC2(in_key[0]);
	e_key[1] = FUNC2(in_key[1]);
	e_key[2] = FUNC2(in_key[2]);
	e_key[3] = FUNC2(in_key[3]);

	switch (ctx->k_len)
	{
		case 4:
			t = e_key[3];
			for (i = 0; i < 10; ++i)
				FUNC3(i);
			break;

		case 6:
			e_key[4] = FUNC2(in_key[4]);
			t = e_key[5] = FUNC2(in_key[5]);
			for (i = 0; i < 8; ++i)
				FUNC4(i);
			break;

		case 8:
			e_key[4] = FUNC2(in_key[4]);
			e_key[5] = FUNC2(in_key[5]);
			e_key[6] = FUNC2(in_key[6]);
			t = e_key[7] = FUNC2(in_key[7]);
			for (i = 0; i < 7; ++i)
				FUNC5(i);
			break;
	}

	if (!encrypt)
	{
		d_key[0] = e_key[0];
		d_key[1] = e_key[1];
		d_key[2] = e_key[2];
		d_key[3] = e_key[3];

		for (i = 4; i < 4 * ctx->k_len + 24; ++i)
			FUNC1(d_key[i], e_key[i]);
	}

	return ctx;
}