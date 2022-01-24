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
struct TYPE_3__ {int s2k_cipher_algo; } ;
typedef  TYPE_1__ PGP_Context ;

/* Variables and functions */
 int FUNC0 (char const*) ; 

int
FUNC1(PGP_Context *ctx, const char *name)
{
	int			code = FUNC0(name);

	if (code < 0)
		return code;
	ctx->s2k_cipher_algo = code;
	return 0;
}