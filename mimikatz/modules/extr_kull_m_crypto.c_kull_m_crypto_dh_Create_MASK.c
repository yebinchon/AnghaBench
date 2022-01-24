#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  g; int /*<<< orphan*/  p; } ;
struct TYPE_6__ {int cbPublicKey; int /*<<< orphan*/ * pbPublicKey; int /*<<< orphan*/  sessionType; } ;
struct TYPE_7__ {TYPE_1__ publicKey; int /*<<< orphan*/  hPrivateKey; int /*<<< orphan*/  hProvParty; } ;
typedef  TYPE_2__* PKIWI_DH ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  KIWI_DH ;
typedef  scalar_t__ BOOL ;
typedef  int /*<<< orphan*/  ALG_ID ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_DH_EPHEM ; 
 int CRYPT_EXPORTABLE ; 
 int CRYPT_PREGEN ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KP_G ; 
 int /*<<< orphan*/  KP_P ; 
 int /*<<< orphan*/  KP_X ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MS_ENH_DSS_DH_PROV ; 
 int /*<<< orphan*/  PROV_DSS_DH ; 
 int /*<<< orphan*/  PUBLICKEYBLOB ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 TYPE_3__ kull_m_crypto_dh_GlobParameters ; 

PKIWI_DH FUNC6(ALG_ID targetSessionKeyType)
{
	PKIWI_DH dh = NULL;
	BOOL status = FALSE;

	if((dh = (PKIWI_DH) FUNC4(LPTR, sizeof(KIWI_DH))))
	{
		dh->publicKey.sessionType = targetSessionKeyType;
		if(FUNC0(&dh->hProvParty, NULL, MS_ENH_DSS_DH_PROV, PROV_DSS_DH, CRYPT_VERIFYCONTEXT))
			if(FUNC2(dh->hProvParty, CALG_DH_EPHEM, (1024 << 16) | CRYPT_EXPORTABLE | CRYPT_PREGEN, &dh->hPrivateKey))
				if(FUNC3(dh->hPrivateKey, KP_P, (PBYTE) &kull_m_crypto_dh_GlobParameters.p, 0))
					if(FUNC3(dh->hPrivateKey, KP_G, (PBYTE) &kull_m_crypto_dh_GlobParameters.g, 0))
						if(FUNC3(dh->hPrivateKey, KP_X, NULL, 0))
							if(FUNC1(dh->hPrivateKey, 0, PUBLICKEYBLOB, 0, NULL, &dh->publicKey.cbPublicKey))
								if((dh->publicKey.pbPublicKey = (PBYTE) FUNC4(LPTR, dh->publicKey.cbPublicKey)))
									status = FUNC1(dh->hPrivateKey, 0, PUBLICKEYBLOB, 0, dh->publicKey.pbPublicKey, &dh->publicKey.cbPublicKey);
		if(!status)
			dh = (PKIWI_DH) FUNC5(dh);
	}
	return dh;
}