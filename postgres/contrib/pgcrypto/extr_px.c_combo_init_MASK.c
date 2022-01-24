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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {int /*<<< orphan*/ * cipher; } ;
typedef  TYPE_1__ PX_Combo ;
typedef  int /*<<< orphan*/  PX_Cipher ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(PX_Combo *cx, const uint8 *key, unsigned klen,
		   const uint8 *iv, unsigned ivlen)
{
	int			err;
	unsigned	ks,
				ivs;
	PX_Cipher  *c = cx->cipher;
	uint8	   *ivbuf = NULL;
	uint8	   *keybuf;

	ks = FUNC5(c);

	ivs = FUNC4(c);
	if (ivs > 0)
	{
		ivbuf = FUNC2(ivs);
		FUNC1(ivbuf, 0, ivs);
		if (ivlen > ivs)
			FUNC0(ivbuf, iv, ivs);
		else
			FUNC0(ivbuf, iv, ivlen);
	}

	if (klen > ks)
		klen = ks;
	keybuf = FUNC2(ks);
	FUNC1(keybuf, 0, ks);
	FUNC0(keybuf, key, klen);

	err = FUNC3(c, keybuf, klen, ivbuf);

	if (ivbuf)
		FUNC6(ivbuf);
	FUNC6(keybuf);

	return err;
}