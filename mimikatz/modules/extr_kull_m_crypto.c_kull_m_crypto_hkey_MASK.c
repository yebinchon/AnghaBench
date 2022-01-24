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
struct TYPE_4__ {scalar_t__ aiKeyAlg; scalar_t__ reserved; int /*<<< orphan*/  bVersion; int /*<<< orphan*/  bType; } ;
struct TYPE_5__ {scalar_t__ dwKeyLen; TYPE_1__ Header; } ;
typedef  TYPE_2__* PGENERICKEY_BLOB ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  GENERICKEY_BLOB ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  scalar_t__ ALG_ID ;

/* Variables and functions */
 scalar_t__ CALG_3DES ; 
 int /*<<< orphan*/  CUR_BLOB_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  PLAINTEXTKEYBLOB ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL FUNC5(HCRYPTPROV hProv, ALG_ID calgid, LPCVOID key, DWORD keyLen, DWORD flags, HCRYPTKEY *hKey, HCRYPTPROV *hSessionProv)
{
	BOOL status = FALSE;
	PGENERICKEY_BLOB keyBlob;
	DWORD szBlob = sizeof(GENERICKEY_BLOB) + keyLen;
	
	if(calgid != CALG_3DES)
	{
		if((keyBlob = (PGENERICKEY_BLOB) FUNC1(LPTR, szBlob)))
		{
			keyBlob->Header.bType = PLAINTEXTKEYBLOB;
			keyBlob->Header.bVersion = CUR_BLOB_VERSION;
			keyBlob->Header.reserved = 0;
			keyBlob->Header.aiKeyAlg = calgid;
			keyBlob->dwKeyLen = keyLen;
			FUNC3((PBYTE) keyBlob + sizeof(GENERICKEY_BLOB), key, keyBlob->dwKeyLen);
			status = FUNC0(hProv, (LPCBYTE) keyBlob, szBlob, 0, flags, hKey);
			FUNC2(keyBlob);
		}
	}
	else if(hSessionProv)
		status = FUNC4(calgid, key, keyLen, flags, hKey, hSessionProv);
	
	return status;
}