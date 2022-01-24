#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* Finish ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* Finalize ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Sum ) (int /*<<< orphan*/ ,int,scalar_t__) ;int /*<<< orphan*/  (* Initialize ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PKERB_CHECKSUM ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;
typedef  int /*<<< orphan*/  ALG_ID ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_CRC32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HP_HASHVAL ; 
 int /*<<< orphan*/  KERB_CHECKSUM_REAL_CRC32 ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_RSA_AES ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

BOOL FUNC16(ALG_ID algid, LPCVOID data, DWORD dataLen, LPVOID hash, DWORD hashWanted)
{
	BOOL status = FALSE;
	HCRYPTPROV hProv;
	HCRYPTHASH hHash;
	DWORD hashLen;
	PBYTE buffer;
	PKERB_CHECKSUM pCheckSum;
	PVOID Context;

	if(algid == CALG_CRC32)
	{
		if((hashWanted == sizeof(DWORD)) && FUNC9(FUNC0(KERB_CHECKSUM_REAL_CRC32, &pCheckSum)))
		{
			if(FUNC9(pCheckSum->Initialize(0, &Context)))
			{
				pCheckSum->Sum(Context, dataLen, data);
				status = FUNC9(pCheckSum->Finalize(Context, hash));
				pCheckSum->Finish(&Context);
			}
		}
	}
	else if(FUNC1(&hProv, NULL, NULL, PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
	{
		if(FUNC2(hProv, algid, 0, 0, &hHash))
		{
			if(FUNC5(hHash, (LPCBYTE) data, dataLen, 0))
			{
				if(FUNC4(hHash, HP_HASHVAL, NULL, &hashLen, 0))
				{
					if((buffer = (PBYTE) FUNC7(LPTR, hashLen)))
					{
						status = FUNC4(hHash, HP_HASHVAL, buffer, &hashLen, 0);
						FUNC10(hash, buffer, FUNC11(hashLen, hashWanted));
						FUNC8(buffer);
					}
				}
			}
			FUNC3(hHash);
		}
		FUNC6(hProv, 0);
	}
	return status;
}