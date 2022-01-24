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
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  tmpbuf ;
struct TYPE_2__ {int corrupt_prefix; int /*<<< orphan*/  cipher_algo; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  PGP_MAX_BLOCK ; 
 int PXE_BUG ; 
 int PXE_PGP_CORRUPT_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,scalar_t__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(void **priv_p, void *arg, PullFilter *src)
{
	PGP_Context *ctx = arg;
	int			len;
	int			res;
	uint8	   *buf;
	uint8		tmpbuf[PGP_MAX_BLOCK + 2];

	len = FUNC0(ctx->cipher_algo);
	if (len > sizeof(tmpbuf))
		return PXE_BUG;

	res = FUNC1(src, len + 2, &buf, tmpbuf);
	if (res < 0)
		return res;
	if (res != len + 2)
	{
		FUNC2("prefix_init: short read");
		FUNC3(tmpbuf, 0, sizeof(tmpbuf));
		return PXE_PGP_CORRUPT_DATA;
	}

	if (buf[len - 2] != buf[len] || buf[len - 1] != buf[len + 1])
	{
		FUNC2("prefix_init: corrupt prefix");
		/* report error in pgp_decrypt() */
		ctx->corrupt_prefix = 1;
	}
	FUNC3(tmpbuf, 0, sizeof(tmpbuf));
	return 0;
}