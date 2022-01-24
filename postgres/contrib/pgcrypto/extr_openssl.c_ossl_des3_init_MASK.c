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
struct TYPE_6__ {int klen; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {TYPE_2__* ptr; } ;
typedef  TYPE_1__ PX_Cipher ;
typedef  TYPE_2__ OSSLCipher ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC3(PX_Cipher *c, const uint8 *key, unsigned klen, const uint8 *iv)
{
	OSSLCipher *od = c->ptr;
	unsigned	bs = FUNC0(c);

	od->klen = 24;
	FUNC2(od->key, 0, 24);
	FUNC1(od->key, key, klen > 24 ? 24 : klen);

	if (iv)
		FUNC1(od->iv, iv, bs);
	else
		FUNC2(od->iv, 0, bs);
	return 0;
}