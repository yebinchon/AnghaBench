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
struct TYPE_4__ {scalar_t__ dwExExportFlagLen; struct TYPE_4__* pExExportFlag; scalar_t__ dwExPrivateKeyLen; struct TYPE_4__* pExPrivateKey; scalar_t__ dwExPublicKeyLen; struct TYPE_4__* pExPublicKey; scalar_t__ dwSiExportFlagLen; struct TYPE_4__* pSiExportFlag; scalar_t__ dwSiPrivateKeyLen; struct TYPE_4__* pSiPrivateKey; scalar_t__ dwSiPublicKeyLen; struct TYPE_4__* pSiPublicKey; scalar_t__ dwHashLen; struct TYPE_4__* pHash; scalar_t__ dwNameLen; struct TYPE_4__* pName; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PKULL_M_KEY_CAPI_BLOB ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KULL_M_KEY_CAPI_BLOB ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  pName ; 

BOOL FUNC3(PKULL_M_KEY_CAPI_BLOB capiKey, PVOID *data, DWORD *size)
{
	BOOL status = FALSE;
	PBYTE ptr;
	*size = FUNC0(KULL_M_KEY_CAPI_BLOB, pName) + capiKey->dwNameLen + capiKey->dwHashLen + capiKey->dwSiPublicKeyLen + capiKey->dwSiPrivateKeyLen + capiKey->dwSiExportFlagLen + capiKey->dwExPublicKeyLen + capiKey->dwExPrivateKeyLen + capiKey->dwExExportFlagLen;
	if((*data = FUNC1(LPTR, *size)))
	{
		ptr = (PBYTE) *data;
		FUNC2(ptr, capiKey, FUNC0(KULL_M_KEY_CAPI_BLOB, pName));
		ptr += FUNC0(KULL_M_KEY_CAPI_BLOB, pName);
		FUNC2(ptr, capiKey->pName, capiKey->dwNameLen);
		ptr += capiKey->dwNameLen;
		FUNC2(ptr, capiKey->pHash, capiKey->dwHashLen);
		ptr += capiKey->dwHashLen;
		FUNC2(ptr, capiKey->pSiPublicKey, capiKey->dwSiPublicKeyLen);
		ptr += capiKey->dwSiPublicKeyLen;
		FUNC2(ptr, capiKey->pSiPrivateKey, capiKey->dwSiPrivateKeyLen);
		ptr += capiKey->dwSiPrivateKeyLen;
		FUNC2(ptr, capiKey->pSiExportFlag, capiKey->dwSiExportFlagLen);
		ptr += capiKey->dwSiExportFlagLen;
		FUNC2(ptr, capiKey->pExPublicKey, capiKey->dwExPublicKeyLen);
		ptr += capiKey->dwExPublicKeyLen;
		FUNC2(ptr, capiKey->pExPrivateKey, capiKey->dwExPrivateKeyLen);
		ptr += capiKey->dwExPrivateKeyLen;
		FUNC2(ptr, capiKey->pExExportFlag, capiKey->dwExExportFlagLen);
		status = TRUE;
	}
	return status;
}