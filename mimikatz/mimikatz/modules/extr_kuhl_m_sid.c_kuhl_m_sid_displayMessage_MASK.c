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
struct TYPE_4__ {int /*<<< orphan*/  bv_len; scalar_t__ bv_val; } ;
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  scalar_t__ PWCHAR ;
typedef  scalar_t__ PLDAPMessage ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  TYPE_1__* PBERVAL ;
typedef  int /*<<< orphan*/  LPGUID ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BerElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__** FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__**) ; 

void FUNC17(PLDAP ld, PLDAPMessage pMessage)
{
	PLDAPMessage pEntry;
	PWCHAR pAttribute, name, domain;
	BerElement* pBer = NULL;
	PBERVAL *pBerVal;
	DWORD i;
	SID_NAME_USE nameUse;

	for(pEntry = FUNC10(ld, pMessage); pEntry; pEntry = FUNC15(ld, pEntry))
	{
		FUNC3(L"\n%s\n", FUNC11(ld, pEntry));
		for(pAttribute = FUNC9(ld, pEntry, &pBer); pAttribute; pAttribute = FUNC14(ld, pEntry, pBer))
		{
			FUNC3(L"  %s: ", pAttribute);
			if((pBerVal = FUNC12(ld, pEntry, pAttribute)))
			{
				if(
					(FUNC1(pAttribute, L"name") == 0) ||
					(FUNC1(pAttribute, L"sAMAccountName") == 0)
					)
				{
					FUNC3(L"%*S\n", pBerVal[0]->bv_len, pBerVal[0]->bv_val);
				}
				else if((FUNC1(pAttribute, L"objectSid") == 0))
				{
					FUNC5(pBerVal[0]->bv_val);
					FUNC3(L"\n");
				}
				else if((FUNC1(pAttribute, L"objectGUID") == 0))
				{
					FUNC4((LPGUID) pBerVal[0]->bv_val);
					FUNC3(L"\n");
				}
				else 
				{
					for(i = 0; pBerVal[i]; i++)
					{
						FUNC3(L"\n   [%u] ", i);
						if((FUNC1(pAttribute, L"sIDHistory") == 0))
						{
							FUNC5(pBerVal[i]->bv_val);
							if(FUNC7(pBerVal[i]->bv_val, &name, &domain, &nameUse, NULL))
							{
								FUNC3(L" ( %s -- %s\\%s )", FUNC8(nameUse), domain, name);
								FUNC0(name);
								FUNC0(domain);
							}
						}
						else FUNC6(pBerVal[i]->bv_val, pBerVal[i]->bv_len, 1);
					}
					FUNC3(L"\n");
				}
				FUNC16(pBerVal);
			}
			FUNC13(pAttribute);
		}
		if(pBer)
			FUNC2(pBer, 0);
	}
}