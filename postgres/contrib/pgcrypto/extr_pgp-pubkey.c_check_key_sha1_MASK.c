#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_9__ {int /*<<< orphan*/  x; } ;
struct TYPE_8__ {int /*<<< orphan*/  u; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  d; } ;
struct TYPE_7__ {int /*<<< orphan*/  x; } ;
struct TYPE_10__ {TYPE_3__ dsa; TYPE_2__ rsa; TYPE_1__ elg; } ;
struct TYPE_11__ {int algo; TYPE_4__ sec; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  int /*<<< orphan*/  PX_MD ;
typedef  TYPE_5__ PGP_PubKey ;

/* Variables and functions */
 int /*<<< orphan*/  PGP_DIGEST_SHA1 ; 
#define  PGP_PUB_DSA_SIGN 132 
#define  PGP_PUB_ELG_ENCRYPT 131 
#define  PGP_PUB_RSA_ENCRYPT 130 
#define  PGP_PUB_RSA_ENCRYPT_SIGN 129 
#define  PGP_PUB_RSA_SIGN 128 
 int PXE_PGP_KEYPKT_CORRUPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(PullFilter *src, PGP_PubKey *pk)
{
	int			res;
	uint8		got_sha1[20];
	uint8		my_sha1[20];
	PX_MD	   *md;

	res = FUNC3(src, 20, got_sha1);
	if (res < 0)
		return res;

	res = FUNC1(PGP_DIGEST_SHA1, &md);
	if (res < 0)
		goto err;
	switch (pk->algo)
	{
		case PGP_PUB_ELG_ENCRYPT:
			FUNC2(md, pk->sec.elg.x);
			break;
		case PGP_PUB_RSA_SIGN:
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			FUNC2(md, pk->sec.rsa.d);
			FUNC2(md, pk->sec.rsa.p);
			FUNC2(md, pk->sec.rsa.q);
			FUNC2(md, pk->sec.rsa.u);
			break;
		case PGP_PUB_DSA_SIGN:
			FUNC2(md, pk->sec.dsa.x);
			break;
	}
	FUNC5(md, my_sha1);
	FUNC6(md);

	if (FUNC0(my_sha1, got_sha1, 20) != 0)
	{
		FUNC4("key sha1 check failed");
		res = PXE_PGP_KEYPKT_CORRUPT;
	}
err:
	FUNC7(got_sha1, 0, 20);
	FUNC7(my_sha1, 0, 20);
	return res;
}