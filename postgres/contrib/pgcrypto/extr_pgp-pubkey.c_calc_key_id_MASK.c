#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_13__ {int /*<<< orphan*/  bytes; } ;
struct TYPE_10__ {TYPE_6__* y; TYPE_6__* g; TYPE_6__* q; TYPE_6__* p; } ;
struct TYPE_9__ {TYPE_6__* e; TYPE_6__* n; } ;
struct TYPE_8__ {TYPE_6__* y; TYPE_6__* g; TYPE_6__* p; } ;
struct TYPE_11__ {TYPE_3__ dsa; TYPE_2__ rsa; TYPE_1__ elg; } ;
struct TYPE_12__ {int algo; int ver; int* time; int /*<<< orphan*/  key_id; TYPE_4__ pub; } ;
typedef  int /*<<< orphan*/  PX_MD ;
typedef  TYPE_5__ PGP_PubKey ;

/* Variables and functions */
 int /*<<< orphan*/  PGP_DIGEST_SHA1 ; 
#define  PGP_PUB_DSA_SIGN 132 
#define  PGP_PUB_ELG_ENCRYPT 131 
#define  PGP_PUB_RSA_ENCRYPT 130 
#define  PGP_PUB_RSA_ENCRYPT_SIGN 129 
#define  PGP_PUB_RSA_SIGN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(PGP_PubKey *pk)
{
	int			res;
	PX_MD	   *md;
	int			len;
	uint8		hdr[3];
	uint8		hash[20];

	res = FUNC1(PGP_DIGEST_SHA1, &md);
	if (res < 0)
		return res;

	len = 1 + 4 + 1;
	switch (pk->algo)
	{
		case PGP_PUB_ELG_ENCRYPT:
			len += 2 + pk->pub.elg.p->bytes;
			len += 2 + pk->pub.elg.g->bytes;
			len += 2 + pk->pub.elg.y->bytes;
			break;
		case PGP_PUB_RSA_SIGN:
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			len += 2 + pk->pub.rsa.n->bytes;
			len += 2 + pk->pub.rsa.e->bytes;
			break;
		case PGP_PUB_DSA_SIGN:
			len += 2 + pk->pub.dsa.p->bytes;
			len += 2 + pk->pub.dsa.q->bytes;
			len += 2 + pk->pub.dsa.g->bytes;
			len += 2 + pk->pub.dsa.y->bytes;
			break;
	}

	hdr[0] = 0x99;
	hdr[1] = len >> 8;
	hdr[2] = len & 0xFF;
	FUNC5(md, hdr, 3);

	FUNC5(md, &pk->ver, 1);
	FUNC5(md, pk->time, 4);
	FUNC5(md, &pk->algo, 1);

	switch (pk->algo)
	{
		case PGP_PUB_ELG_ENCRYPT:
			FUNC2(md, pk->pub.elg.p);
			FUNC2(md, pk->pub.elg.g);
			FUNC2(md, pk->pub.elg.y);
			break;
		case PGP_PUB_RSA_SIGN:
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			FUNC2(md, pk->pub.rsa.n);
			FUNC2(md, pk->pub.rsa.e);
			break;
		case PGP_PUB_DSA_SIGN:
			FUNC2(md, pk->pub.dsa.p);
			FUNC2(md, pk->pub.dsa.q);
			FUNC2(md, pk->pub.dsa.g);
			FUNC2(md, pk->pub.dsa.y);
			break;
	}

	FUNC3(md, hash);
	FUNC4(md);

	FUNC0(pk->key_id, hash + 12, 8);
	FUNC6(hash, 0, 20);

	return 0;
}