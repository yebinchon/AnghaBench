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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int type; int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
typedef  TYPE_1__* PKIWI_CREDENTIAL_KEY ;

/* Variables and functions */
#define  CREDENTIALS_KEY_TYPE_DPAPI_PROTECTION 131 
#define  CREDENTIALS_KEY_TYPE_NTLM 130 
#define  CREDENTIALS_KEY_TYPE_ROOTKEY 129 
#define  CREDENTIALS_KEY_TYPE_SHA1 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID FUNC2(PKIWI_CREDENTIAL_KEY key)
{
	switch(key->type)
	{
	case CREDENTIALS_KEY_TYPE_NTLM:
		FUNC0("\n\t * NTLM     : ");
		break;
	case CREDENTIALS_KEY_TYPE_SHA1:
		FUNC0("\n\t * SHA1     : ");
		break;
	case CREDENTIALS_KEY_TYPE_ROOTKEY:
		FUNC0("\n\t * RootKey  : ");
		break;
	case CREDENTIALS_KEY_TYPE_DPAPI_PROTECTION:
		FUNC0("\n\t * DPAPI    : ");
		break;
	default:
		FUNC0("\n\t * %08x : ", key->type);
	}
	FUNC1(key->pbData, key->cbData, 0);
}