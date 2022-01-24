#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_5__ {int init; int /*<<< orphan*/  evp_ctx; int /*<<< orphan*/ * iv; int /*<<< orphan*/ * key; int /*<<< orphan*/  klen; int /*<<< orphan*/ * evp_ciph; } ;
struct TYPE_4__ {TYPE_2__* ptr; } ;
typedef  TYPE_1__ PX_Cipher ;
typedef  TYPE_2__ OSSLCipher ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/  const*,unsigned int) ; 
 int PXE_CIPHER_INIT ; 
 int PXE_ERR_GENERIC ; 

__attribute__((used)) static int
FUNC3(PX_Cipher *c, const uint8 *data, unsigned dlen,
				 uint8 *res)
{
	OSSLCipher *od = c->ptr;
	int			outlen;

	if (!od->init)
	{
		if (!FUNC1(od->evp_ctx, od->evp_ciph, NULL, NULL, NULL))
			return PXE_CIPHER_INIT;
		if (!FUNC0(od->evp_ctx, od->klen))
			return PXE_CIPHER_INIT;
		if (!FUNC1(od->evp_ctx, NULL, NULL, od->key, od->iv))
			return PXE_CIPHER_INIT;
		od->init = true;
	}

	if (!FUNC2(od->evp_ctx, res, &outlen, data, dlen))
		return PXE_ERR_GENERIC;

	return 0;
}