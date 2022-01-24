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
struct TYPE_3__ {int mode; int digest_algo; int iter; int /*<<< orphan*/  salt; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_S2K ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int PXE_PGP_BAD_S2K_MODE ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC2(PullFilter *src, PGP_S2K *s2k)
{
	int			res = 0;

	FUNC0(src, s2k->mode);
	FUNC0(src, s2k->digest_algo);
	switch (s2k->mode)
	{
		case 0:
			break;
		case 1:
			res = FUNC1(src, 8, s2k->salt);
			break;
		case 3:
			res = FUNC1(src, 8, s2k->salt);
			if (res < 0)
				break;
			FUNC0(src, s2k->iter);
			break;
		default:
			res = PXE_PGP_BAD_S2K_MODE;
	}
	return res;
}