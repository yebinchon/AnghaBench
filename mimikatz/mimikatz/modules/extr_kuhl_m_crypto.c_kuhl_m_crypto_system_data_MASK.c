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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_5__ {scalar_t__ size; int dwPropId; scalar_t__ data; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  offsetRgProvParam; int /*<<< orphan*/  cProvParam; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  dwKeySpec; int /*<<< orphan*/  dwProvType; scalar_t__ offsetProvName; scalar_t__ offsetContainerName; } ;
typedef  TYPE_1__* PKUHL_M_CRYPTO_CRYPT_KEY_PROV_INFO ;
typedef  TYPE_2__* PKUHL_M_CRYPTO_CERT_PROP ;
typedef  char* PCWCHAR ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  CERT_FRIENDLY_NAME_PROP_ID 142 
#define  CERT_ISSUER_PUBLIC_KEY_MD5_HASH_PROP_ID 141 
#define  CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID 140 
#define  CERT_KEY_IDENTIFIER_PROP_ID 139 
#define  CERT_KEY_PROV_INFO_PROP_ID 138 
#define  CERT_MD5_HASH_PROP_ID 137 
#define  CERT_OCSP_CACHE_PREFIX_PROP_ID 136 
#define  CERT_SHA1_HASH_PROP_ID 135 
#define  CERT_SIGNATURE_HASH_PROP_ID 134 
#define  CERT_SUBJECT_NAME_MD5_HASH_PROP_ID 133 
#define  CERT_SUBJECT_PUBLIC_KEY_MD5_HASH_PROP_ID 132 
#define  CERT_cert_file_element 131 
#define  CERT_crl_file_element 130 
#define  CERT_ctl_file_element 129 
#define  CERT_keyid_file_element 128 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  KUHL_M_CRYPTO_CERT_PROP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 

BOOL FUNC7(PBYTE data, DWORD len, PCWCHAR originalName, BOOL isExport)
{
	BOOL status = FALSE;
	PCWCHAR name;
	PKUHL_M_CRYPTO_CERT_PROP prop;
	PKUHL_M_CRYPTO_CRYPT_KEY_PROV_INFO provInfo;

	for(prop = (PKUHL_M_CRYPTO_CERT_PROP) data; (PBYTE) prop < (data + len); prop = (PKUHL_M_CRYPTO_CERT_PROP) ((PBYTE) prop + FUNC0(KUHL_M_CRYPTO_CERT_PROP, data) + prop->size))
	{
		name = FUNC3(prop->dwPropId);
		FUNC1(L"[%04x/%x] %s\n", prop->dwPropId, prop->flags, name ? name : L"?");
		if(prop->size)
		{
			FUNC1(L"  ");
			switch(prop->dwPropId)
			{
			case CERT_KEY_PROV_INFO_PROP_ID:
				FUNC1(L"Provider info:\n");
				provInfo = (PKUHL_M_CRYPTO_CRYPT_KEY_PROV_INFO) prop->data;
				if(provInfo->offsetContainerName)
					FUNC1(L"\tKey Container  : %s\n", prop->data + provInfo->offsetContainerName);
				if(provInfo->offsetProvName)
					FUNC1(L"\tProvider       : %s\n", prop->data + provInfo->offsetProvName);
				name = FUNC5(provInfo->dwProvType);
				FUNC1(L"\tProvider type  : %s (%u)\n", name ? name : L"?", provInfo->dwProvType);
				FUNC1(L"\tType           : %s (0x%08x)\n", FUNC4(provInfo->dwKeySpec), provInfo->dwKeySpec);
				FUNC1(L"\tFlags          : %08x\n", provInfo->dwFlags);
				FUNC1(L"\tParam (todo)   : %08x / %08x\n", provInfo->cProvParam, provInfo->offsetRgProvParam);
				break;
			case CERT_FRIENDLY_NAME_PROP_ID:
			case CERT_OCSP_CACHE_PREFIX_PROP_ID:
			case 101: //CERT_SMART_CARD_READER_PROP_ID
				FUNC1(L"%.*s", prop->size / sizeof(wchar_t), prop->data);
				break;
			case CERT_cert_file_element:
			case CERT_crl_file_element:
			case CERT_ctl_file_element:
			case CERT_keyid_file_element:
				FUNC2(prop, originalName, isExport);
				break;
			case CERT_SHA1_HASH_PROP_ID:
			case CERT_MD5_HASH_PROP_ID :
			case CERT_SIGNATURE_HASH_PROP_ID:
			case CERT_ISSUER_PUBLIC_KEY_MD5_HASH_PROP_ID:
			case CERT_SUBJECT_PUBLIC_KEY_MD5_HASH_PROP_ID:
			case CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID:
			case CERT_SUBJECT_NAME_MD5_HASH_PROP_ID:
			case CERT_KEY_IDENTIFIER_PROP_ID:
				//
			default:
				FUNC6(prop->data, prop->size, 0);
				break;
			}
			FUNC1(L"\n");
		}
	}

	return status;
}