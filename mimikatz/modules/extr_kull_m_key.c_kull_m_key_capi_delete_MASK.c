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
struct TYPE_4__ {struct TYPE_4__* pExExportFlag; struct TYPE_4__* pExPrivateKey; struct TYPE_4__* pExPublicKey; struct TYPE_4__* pSiExportFlag; struct TYPE_4__* pSiPrivateKey; struct TYPE_4__* pSiPublicKey; struct TYPE_4__* pHash; struct TYPE_4__* pName; } ;
typedef  TYPE_1__* PKULL_M_KEY_CAPI_BLOB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(PKULL_M_KEY_CAPI_BLOB capiKey)
{
	if(capiKey)
	{
		if(capiKey->pName)
			FUNC0(capiKey->pName);
		if(capiKey->pHash)
			FUNC0(capiKey->pHash);
		if(capiKey->pSiPublicKey)
			FUNC0(capiKey->pSiPublicKey);
		if(capiKey->pSiPrivateKey)
			FUNC0(capiKey->pSiPrivateKey);
		if(capiKey->pSiExportFlag)
			FUNC0(capiKey->pSiExportFlag);
		if(capiKey->pExPublicKey)
			FUNC0(capiKey->pExPublicKey);
		if(capiKey->pExPrivateKey)
			FUNC0(capiKey->pExPrivateKey);
		if(capiKey->pExExportFlag)
			FUNC0(capiKey->pExExportFlag);
		FUNC0(capiKey);
	}
}