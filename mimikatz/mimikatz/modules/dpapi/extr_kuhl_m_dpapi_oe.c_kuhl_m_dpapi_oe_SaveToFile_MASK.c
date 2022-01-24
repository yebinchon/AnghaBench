#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ Flink; } ;
struct TYPE_20__ {int MasterKeyCount; int CredentialCount; int DomainKeyCount; int /*<<< orphan*/ ** DomainKeys; int /*<<< orphan*/ ** Credentials; int /*<<< orphan*/ ** MasterKeys; int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {scalar_t__ Flink; } ;
struct TYPE_19__ {int /*<<< orphan*/  data; TYPE_2__ navigator; } ;
struct TYPE_16__ {scalar_t__ Flink; } ;
struct TYPE_18__ {int /*<<< orphan*/  data; TYPE_3__ navigator; } ;
struct TYPE_14__ {scalar_t__ Flink; } ;
struct TYPE_17__ {int /*<<< orphan*/  data; TYPE_1__ navigator; } ;
struct TYPE_13__ {scalar_t__ Flink; } ;
struct TYPE_12__ {scalar_t__ Flink; } ;
typedef  int /*<<< orphan*/ ** PVOID ;
typedef  TYPE_4__* PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef  TYPE_5__* PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;
typedef  TYPE_6__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef  int /*<<< orphan*/ * PKUHL_M_DPAPI_MASTERKEY_ENTRY ;
typedef  int /*<<< orphan*/ * PKUHL_M_DPAPI_DOMAINKEY_ENTRY ;
typedef  int /*<<< orphan*/ * PKUHL_M_DPAPI_CREDENTIAL_ENTRY ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_7__ KUHL_M_DPAPI_ENTRIES ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_11__ gDPAPI_Credentials ; 
 TYPE_10__ gDPAPI_Domainkeys ; 
 TYPE_9__ gDPAPI_Masterkeys ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (TYPE_7__*,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t) ; 

BOOL FUNC6(LPCWSTR filename)
{
	BOOL status = FALSE;
	PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY mkEntry;
	PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY crEntry;
	PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY dkEntry;
	KUHL_M_DPAPI_ENTRIES entries = {0};
	PVOID pData;
	DWORD i, dwData;

	for(mkEntry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) gDPAPI_Masterkeys.Flink; mkEntry != (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) &gDPAPI_Masterkeys; mkEntry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) mkEntry->navigator.Flink, entries.MasterKeyCount++);
	for(crEntry = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) gDPAPI_Credentials.Flink; crEntry != (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) &gDPAPI_Credentials; crEntry = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) crEntry->navigator.Flink, entries.CredentialCount++);
	for(dkEntry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) gDPAPI_Domainkeys.Flink; dkEntry != (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) &gDPAPI_Domainkeys; dkEntry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) dkEntry->navigator.Flink, entries.DomainKeyCount++);

	if(entries.MasterKeyCount)
		if((entries.MasterKeys = (PKUHL_M_DPAPI_MASTERKEY_ENTRY *) FUNC0(LPTR, entries.MasterKeyCount * sizeof(PKUHL_M_DPAPI_MASTERKEY_ENTRY))))
			for(i = 0, mkEntry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) gDPAPI_Masterkeys.Flink; i < entries.MasterKeyCount; mkEntry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) mkEntry->navigator.Flink, i++)
				entries.MasterKeys[i] = &mkEntry->data;

	if(entries.CredentialCount)
		if((entries.Credentials = (PKUHL_M_DPAPI_CREDENTIAL_ENTRY *) FUNC0(LPTR, entries.CredentialCount * sizeof(PKUHL_M_DPAPI_CREDENTIAL_ENTRY))))
			for(i = 0, crEntry = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) gDPAPI_Credentials.Flink; i < entries.CredentialCount; crEntry = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) crEntry->navigator.Flink, i++)
				entries.Credentials[i] = &crEntry->data;

	if(entries.DomainKeyCount)
		if((entries.DomainKeys = (PKUHL_M_DPAPI_DOMAINKEY_ENTRY *) FUNC0(LPTR, entries.DomainKeyCount * sizeof(PKUHL_M_DPAPI_DOMAINKEY_ENTRY))))
			for(i = 0, dkEntry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) gDPAPI_Domainkeys.Flink; i < entries.DomainKeyCount; dkEntry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) dkEntry->navigator.Flink, i++)
				entries.DomainKeys[i] = &dkEntry->data;

	FUNC3(L"Will encode:\n * %3u MasterKey(s)\n * %3u Credential(s)\n * %3u DomainKey(s)\n", entries.MasterKeyCount, entries.CredentialCount, entries.DomainKeyCount);
	if(FUNC4(&entries, &pData, &dwData))
	{
		FUNC3(L"Encoded:\n * addr: 0x%p\n * size: %u\n", pData, dwData);
		FUNC3(L"Write file \'%s\': ", filename);
		if(FUNC5(filename, pData, dwData))
			FUNC3(L"OK\n");
		else FUNC2(L"\nkull_m_file_writeData");
		FUNC1(pData);
	}

	if(entries.MasterKeys)
		FUNC1(entries.MasterKeys);
	if(entries.Credentials)
		FUNC1(entries.Credentials);
	if(entries.DomainKeys)
		FUNC1(entries.DomainKeys);

	return status;
}