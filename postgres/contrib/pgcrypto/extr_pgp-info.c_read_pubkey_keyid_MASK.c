#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_4__ {int algo; int /*<<< orphan*/  key_id; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_PubKey ;

/* Variables and functions */
#define  PGP_PUB_ELG_ENCRYPT 130 
#define  PGP_PUB_RSA_ENCRYPT 129 
#define  PGP_PUB_RSA_ENCRYPT_SIGN 128 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(PullFilter *pkt, uint8 *keyid_buf)
{
	int			res;
	PGP_PubKey *pk = NULL;

	res = FUNC0(pkt, &pk);
	if (res < 0)
		goto err;

	/* skip secret key part, if it exists */
	res = FUNC3(pkt);
	if (res < 0)
		goto err;

	/* is it encryption key */
	switch (pk->algo)
	{
		case PGP_PUB_ELG_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			FUNC1(keyid_buf, pk->key_id, 8);
			res = 1;
			break;
		default:
			res = 0;
	}

err:
	FUNC2(pk);
	return res;
}