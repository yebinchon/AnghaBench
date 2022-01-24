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
typedef  int /*<<< orphan*/  const uint8 ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {unsigned int key_len; int /*<<< orphan*/  const* salt; int /*<<< orphan*/  const* key; } ;
typedef  int /*<<< orphan*/  PX_MD ;
typedef  TYPE_1__ PGP_S2K ;

/* Variables and functions */
 int PGP_MAX_DIGEST ; 
 unsigned int PGP_S2K_SALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(PGP_S2K *s2k, PX_MD *md, const uint8 *key, unsigned key_len)
{
	unsigned	md_rlen;
	uint8		buf[PGP_MAX_DIGEST];
	unsigned	preload = 0;
	uint8	   *dst;
	unsigned	remain;

	md_rlen = FUNC4(md);

	dst = s2k->key;
	remain = s2k->key_len;
	while (remain > 0)
	{
		FUNC3(md);

		if (preload > 0)
		{
			FUNC1(buf, 0, preload);
			FUNC5(md, buf, preload);
		}
		preload++;

		FUNC5(md, s2k->salt, PGP_S2K_SALT);
		FUNC5(md, key, key_len);
		FUNC2(md, buf);

		if (remain > md_rlen)
		{
			FUNC0(dst, buf, md_rlen);
			remain -= md_rlen;
			dst += md_rlen;
		}
		else
		{
			FUNC0(dst, buf, remain);
			remain = 0;
		}
	}
	FUNC6(buf, 0, sizeof(buf));
	return 0;
}