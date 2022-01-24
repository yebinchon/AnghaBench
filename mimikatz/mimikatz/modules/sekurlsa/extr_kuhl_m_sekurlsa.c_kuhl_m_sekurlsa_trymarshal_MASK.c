#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {int /*<<< orphan*/  cbBlob; int /*<<< orphan*/  pbBlob; } ;
struct TYPE_8__ {int cbSize; int /*<<< orphan*/  rgbHashOfCert; } ;
struct TYPE_7__ {scalar_t__ Length; scalar_t__ Buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  UserName; } ;
typedef  scalar_t__ PWSTR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PUSERNAME_TARGET_CREDENTIAL_INFO ;
typedef  TYPE_2__* PCUNICODE_STRING ;
typedef  TYPE_3__* PCERT_CREDENTIAL_INFO ;
typedef  TYPE_4__* PBINARY_BLOB_CREDENTIAL_INFO ;
typedef  int /*<<< orphan*/  CRED_MARSHAL_TYPE ;
typedef  int /*<<< orphan*/  CERT_CREDENTIAL_INFO ;

/* Variables and functions */
#define  BinaryBlobCredential 131 
 int /*<<< orphan*/  CERT_HASH_LENGTH ; 
#define  CertCredential 130 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
#define  UsernameForPackedCredentials 129 
#define  UsernameTargetCredential 128 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

VOID FUNC9(PCUNICODE_STRING MarshaledCredential)
{
	PWSTR buffer;
	CRED_MARSHAL_TYPE type;
	PVOID Credential;

	if(MarshaledCredential->Length && MarshaledCredential->Buffer)
	{
		if((buffer = (PWSTR) FUNC2(LPTR, MarshaledCredential->Length + sizeof(wchar_t))))
		{
			FUNC6(buffer, MarshaledCredential->Buffer, MarshaledCredential->Length);
			if(FUNC0(buffer))
			{
				FUNC7(L"\n\t * Marshaled: ");
				if(FUNC1(buffer, &type, &Credential))
				{
					switch(type)
					{
					case CertCredential:
						if(((PCERT_CREDENTIAL_INFO) Credential)->cbSize == sizeof(CERT_CREDENTIAL_INFO))
						{
							FUNC7(L"[Cert] SHA1:");
							FUNC8(((PCERT_CREDENTIAL_INFO) Credential)->rgbHashOfCert, CERT_HASH_LENGTH, 0);
						}
						else FUNC4(L"Credential->cbSize is %u\n", ((PCERT_CREDENTIAL_INFO) Credential)->cbSize);
						break;
					case UsernameTargetCredential:
						FUNC7(L"[UsernameTarget] %s\n", ((PUSERNAME_TARGET_CREDENTIAL_INFO) Credential)->UserName);
						break;
					case BinaryBlobCredential:
						FUNC7(L"[BinaryBlob] ");
						FUNC8(((PBINARY_BLOB_CREDENTIAL_INFO) Credential)->pbBlob, ((PBINARY_BLOB_CREDENTIAL_INFO) Credential)->cbBlob, 1);
						break;
					case UsernameForPackedCredentials:
						FUNC7(L"[UsernameForPacked] ?");
						break;
					default:
						FUNC7(L"[?] ?");
					}
				}
				else FUNC5(L"CredUnmarshalCredential");
			}
			FUNC3(buffer);
		}
	}
}