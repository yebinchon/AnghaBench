#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calcChecksum ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_19__ {scalar_t__ valLen; int /*<<< orphan*/ * pVal; } ;
struct TYPE_18__ {scalar_t__ Buffer; scalar_t__ MaximumLength; scalar_t__ Length; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int /*<<< orphan*/  digest; } ;
struct TYPE_16__ {scalar_t__ CheckSum; int /*<<< orphan*/  EncryptedData; scalar_t__ Salt; } ;
struct TYPE_15__ {int SessionKeyLength; scalar_t__ SessionKey; } ;
typedef  TYPE_1__ SecPkgContext_SessionKey ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PSecPkgContext_SessionKey ;
typedef  TYPE_3__* PENCRYPTED_PAYLOAD ;
typedef  scalar_t__ PBYTE ;
typedef  TYPE_4__ MD5_CTX ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_5__ CRYPTO_BUFFER ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_6__ ATTRVAL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_CRC32 ; 
 int /*<<< orphan*/  CheckSum ; 
 int /*<<< orphan*/  ENCRYPTED_PAYLOAD ; 
 int /*<<< orphan*/  EncryptedData ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  MD5_DIGEST_LENGTH ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 TYPE_1__ kull_m_rpc_drsr_g_sKey ; 

BOOL FUNC11(ATTRVAL *val, SecPkgContext_SessionKey *SessionKey)
{
	BOOL status = FALSE;
	PSecPkgContext_SessionKey pKey = SessionKey ? SessionKey : &kull_m_rpc_drsr_g_sKey;
	PENCRYPTED_PAYLOAD encrypted = (PENCRYPTED_PAYLOAD) val->pVal;
	MD5_CTX md5ctx;
	CRYPTO_BUFFER cryptoKey = {MD5_DIGEST_LENGTH, MD5_DIGEST_LENGTH, md5ctx.digest}, cryptoData;
	DWORD realLen, calcChecksum;
	PVOID toFree;
	
	if(pKey->SessionKey && pKey->SessionKeyLength)
	{
		if((val->valLen >= (ULONG) FUNC0(ENCRYPTED_PAYLOAD, EncryptedData)) && val->pVal)
		{
			FUNC2(&md5ctx);
			FUNC3(&md5ctx, pKey->SessionKey, pKey->SessionKeyLength);
			FUNC3(&md5ctx, encrypted->Salt, sizeof(encrypted->Salt));
			FUNC1(&md5ctx);
			cryptoData.Length = cryptoData.MaximumLength = val->valLen - FUNC0(ENCRYPTED_PAYLOAD, CheckSum);
			cryptoData.Buffer = (PBYTE) &encrypted->CheckSum;
			if(FUNC6(FUNC9(&cryptoData, &cryptoKey)))
			{
				realLen = val->valLen - FUNC0(ENCRYPTED_PAYLOAD, EncryptedData);
				if(FUNC10(CALG_CRC32, encrypted->EncryptedData, realLen, &calcChecksum, sizeof(calcChecksum)))
				{
					if(calcChecksum == encrypted->CheckSum)
					{
						toFree = val->pVal;
						if((val->pVal = (UCHAR *) FUNC4(realLen)))
						{
							FUNC8(val->pVal, encrypted->EncryptedData, realLen);
							val->valLen = realLen;
							status = TRUE;
							FUNC5(toFree);
						}
					}
					else FUNC7(L"Checksums don\'t match (C:0x%08x - R:0x%08x)\n", calcChecksum, encrypted->CheckSum);
				}
				else FUNC7(L"Unable to calculate CRC32\n");
			}
			else FUNC7(L"RtlEncryptDecryptRC4\n");
		}
		else FUNC7(L"No valid data\n");
	}
	else FUNC7(L"No Session Key\n");
	return status;
}