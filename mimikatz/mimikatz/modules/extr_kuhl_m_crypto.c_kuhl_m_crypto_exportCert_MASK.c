#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_8__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  cbCertEncoded; int /*<<< orphan*/  pbCertEncoded; } ;
typedef  TYPE_1__* PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_2__ CRYPT_DATA_BLOB ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_CLOSE_STORE_FORCE_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_ADD_NEW ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(PCCERT_CONTEXT pCertificate, BOOL havePrivateKey, const wchar_t * systemStore, const wchar_t * store, const DWORD index, const wchar_t * name)
{
	wchar_t *fileNameBuffer;
	BOOL isExported;
	HCERTSTORE hTempStore = FUNC3(CERT_STORE_PROV_MEMORY, 0, 0, CERT_STORE_CREATE_NEW_FLAG, NULL); 
	PCCERT_CONTEXT  pCertContextCopy = NULL;
	CRYPT_DATA_BLOB bDataBlob = {0, NULL};

	if((fileNameBuffer = FUNC7(systemStore, store, index, name, L"der")))
	{
		isExported = FUNC9(fileNameBuffer, pCertificate->pbCertEncoded, pCertificate->cbCertEncoded);
		FUNC6(L"\tPublic export  : %s - ", isExported ? L"OK" : L"KO");
		if(isExported)
			FUNC6(L"\'%s\'\n", fileNameBuffer);
		else FUNC5(L"CreateFile");
		FUNC4(fileNameBuffer);
	}
	else FUNC5(L"kuhl_m_crypto_generateFileName");
	
	if(havePrivateKey)
	{
		if((fileNameBuffer = FUNC7(systemStore, store, index, name, L"pfx")))
		{
			isExported = FALSE;
			if(FUNC0(hTempStore, pCertificate, CERT_STORE_ADD_NEW, &pCertContextCopy))
			{
				isExported = FUNC8(hTempStore, fileNameBuffer);
				FUNC2(pCertContextCopy);
			}
			FUNC6(L"\tPrivate export : %s - ", isExported ? L"OK" : L"KO");
			if(isExported)
				FUNC6(L"\'%s\'\n", fileNameBuffer);
			else FUNC5(L"Export / CreateFile");
			FUNC4(fileNameBuffer);
		}
		else FUNC5(L"kuhl_m_crypto_generateFileName");
	}
	FUNC6(L"\n");
	FUNC1(hTempStore, CERT_CLOSE_STORE_FORCE_FLAG);
}