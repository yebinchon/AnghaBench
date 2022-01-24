#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_6__ {unsigned int klen; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {TYPE_2__* ptr; } ;
typedef  TYPE_1__ PX_Cipher ;
typedef  TYPE_2__ OSSLCipher ;

/* Variables and functions */
 int PXE_KEY_TOO_BIG ; 
 int FUNC0 () ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC4(PX_Cipher *c, const uint8 *key, unsigned klen, const uint8 *iv)
{
	OSSLCipher *od = c->ptr;
	unsigned	bs = FUNC1(c);
	static int	bf_is_strong = -1;

	/*
	 * Test if key len is supported. BF_set_key silently cut large keys and it
	 * could be a problem when user transfer crypted data from one server to
	 * another.
	 */

	if (bf_is_strong == -1)
		bf_is_strong = FUNC0();

	if (!bf_is_strong && klen > 16)
		return PXE_KEY_TOO_BIG;

	/* Key len is supported. We can use it. */
	od->klen = klen;
	FUNC2(od->key, key, klen);

	if (iv)
		FUNC2(od->iv, iv, bs);
	else
		FUNC3(od->iv, 0, bs);
	return 0;
}