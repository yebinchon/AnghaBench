#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  BlowfishContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(uint8 *blk, int len, BlowfishContext *ctx)
{
	uint32		xL,
				xR,
				out[2];

	FUNC0((len & 7) == 0);

	while (len > 0)
	{
		xL = FUNC1(blk);
		xR = FUNC1(blk + 4);
		FUNC3(xL, xR, out, ctx);
		FUNC2(blk, out[0]);
		FUNC2(blk + 4, out[1]);
		blk += 8;
		len -= 8;
	}
}