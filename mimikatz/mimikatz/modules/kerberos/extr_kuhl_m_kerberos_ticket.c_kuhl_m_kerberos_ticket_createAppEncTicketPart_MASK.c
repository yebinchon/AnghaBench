#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  bv_len; int /*<<< orphan*/  bv_val; } ;
struct TYPE_8__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Value; } ;
struct TYPE_9__ {int /*<<< orphan*/  RenewUntil; int /*<<< orphan*/  EndTime; int /*<<< orphan*/  StartTime; int /*<<< orphan*/  ClientName; int /*<<< orphan*/  AltTargetDomainName; TYPE_1__ Key; int /*<<< orphan*/  KeyType; int /*<<< orphan*/  TicketFlags; } ;
typedef  TYPE_2__* PKIWI_KERBEROS_TICKET ;
typedef  TYPE_3__* PBERVAL ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BerElement ;

/* Variables and functions */
 int /*<<< orphan*/  ID_APP_ENCTICKETPART ; 
 int /*<<< orphan*/  ID_AUTHDATA_AD_IF_RELEVANT ; 
 int /*<<< orphan*/  ID_AUTHDATA_AD_WIN2K_PAC ; 
 int /*<<< orphan*/  ID_CTX_AUTHORIZATIONDATA_AD_DATA ; 
 int /*<<< orphan*/  ID_CTX_AUTHORIZATIONDATA_AD_TYPE ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_AUTHORIZATION_DATA ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_AUTHTIME ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_CNAME ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_CREALM ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_ENDTIME ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_FLAGS ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_KEY ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_RENEW_TILL ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_STARTTIME ; 
 int /*<<< orphan*/  ID_CTX_ENCTICKETPART_TRANSITED ; 
 int /*<<< orphan*/  ID_CTX_TRANSITEDENCODING_CONTENTS ; 
 int /*<<< orphan*/  ID_CTX_TRANSITEDENCODING_TR_TYPE ; 
 int /*<<< orphan*/  LBER_USE_DER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PBERVAL FUNC12(PKIWI_KERBEROS_TICKET ticket, LPCVOID PacAuthData, DWORD PacAuthDataSize)
{
	BerElement *pBer, *pBerPac;
	PBERVAL pBerVal = NULL, pBerValPac = NULL;
	if((pBer = FUNC2(LBER_USE_DER)))
	{
		FUNC6(pBer, "t{{t{", FUNC0(ID_APP_ENCTICKETPART), FUNC1(ID_CTX_ENCTICKETPART_FLAGS));
		FUNC9(pBer, ticket->TicketFlags);
		FUNC6(pBer, "}t{", FUNC1(ID_CTX_ENCTICKETPART_KEY));
		FUNC7(pBer, ticket->KeyType, ticket->Key.Value, ticket->Key.Length);
		FUNC6(pBer, "}t{", FUNC1(ID_CTX_ENCTICKETPART_CREALM));
		FUNC10(pBer, &ticket->AltTargetDomainName);
		FUNC6(pBer, "}t{", FUNC1(ID_CTX_ENCTICKETPART_CNAME));
		FUNC8(pBer, ticket->ClientName);
		FUNC6(pBer, "}t{{t{i}t{o}}}t{", FUNC1(ID_CTX_ENCTICKETPART_TRANSITED), FUNC1(ID_CTX_TRANSITEDENCODING_TR_TYPE), 0, FUNC1(ID_CTX_TRANSITEDENCODING_CONTENTS), NULL, 0, FUNC1(ID_CTX_ENCTICKETPART_AUTHTIME));
		FUNC11(pBer, &ticket->StartTime);
		FUNC6(pBer, "}t{", FUNC1(ID_CTX_ENCTICKETPART_STARTTIME));
		FUNC11(pBer, &ticket->StartTime);
		FUNC6(pBer, "}t{", FUNC1(ID_CTX_ENCTICKETPART_ENDTIME));
		FUNC11(pBer, &ticket->EndTime);
		FUNC6(pBer, "}t{", FUNC1(ID_CTX_ENCTICKETPART_RENEW_TILL));
		FUNC11(pBer, &ticket->RenewUntil);
		FUNC6(pBer, "}"); /* ID_CTX_ENCTICKETPART_CADDR not present */
		if(PacAuthData && PacAuthDataSize)
		{
			FUNC6(pBer, "t{{{t{i}t{", FUNC1(ID_CTX_ENCTICKETPART_AUTHORIZATION_DATA), FUNC1(ID_CTX_AUTHORIZATIONDATA_AD_TYPE), ID_AUTHDATA_AD_IF_RELEVANT, FUNC1(ID_CTX_AUTHORIZATIONDATA_AD_DATA));
			if((pBerPac = FUNC2(LBER_USE_DER)))
			{
				FUNC6(pBerPac, "{{t{i}t{o}}}", FUNC1(ID_CTX_AUTHORIZATIONDATA_AD_TYPE), ID_AUTHDATA_AD_WIN2K_PAC, FUNC1(ID_CTX_AUTHORIZATIONDATA_AD_DATA), PacAuthData, PacAuthDataSize);
				if(FUNC4(pBerPac, &pBerValPac) >= 0)
					FUNC6(pBer, "o", pBerValPac->bv_val, pBerValPac->bv_len);
				FUNC5(pBerPac, 1);
			}
			FUNC6(pBer, "}}}}");
		}
		FUNC6(pBer, "}}");
		FUNC4(pBer, &pBerVal);
		if(pBerValPac)
			FUNC3(pBerValPac);
		FUNC5(pBer, 1);
	}
	return pBerVal;
}