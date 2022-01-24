#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_6__ {scalar_t__ key_len; int mode; int /*<<< orphan*/  digest_algo; } ;
typedef  int /*<<< orphan*/  PX_MD ;
typedef  TYPE_1__ PGP_S2K ;

/* Variables and functions */
 int PXE_PGP_BAD_S2K_MODE ; 
 int PXE_PGP_UNSUPPORTED_CIPHER ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(PGP_S2K *s2k, int cipher, const uint8 *key, int key_len)
{
	int			res;
	PX_MD	   *md;

	s2k->key_len = FUNC3(cipher);
	if (s2k->key_len <= 0)
		return PXE_PGP_UNSUPPORTED_CIPHER;

	res = FUNC4(s2k->digest_algo, &md);
	if (res < 0)
		return res;

	switch (s2k->mode)
	{
		case 0:
			res = FUNC2(s2k, md, key, key_len);
			break;
		case 1:
			res = FUNC1(s2k, md, key, key_len);
			break;
		case 3:
			res = FUNC0(s2k, md, key, key_len);
			break;
		default:
			res = PXE_PGP_BAD_S2K_MODE;
	}
	FUNC5(md);
	return res;
}