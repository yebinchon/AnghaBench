#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  bv_len; int /*<<< orphan*/  bv_val; } ;
struct TYPE_10__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Value; } ;
struct TYPE_9__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Value; } ;
struct TYPE_11__ {int /*<<< orphan*/  ServiceName; int /*<<< orphan*/  DomainName; int /*<<< orphan*/  RenewUntil; int /*<<< orphan*/  EndTime; int /*<<< orphan*/  StartTime; int /*<<< orphan*/  TicketFlags; int /*<<< orphan*/  ClientName; int /*<<< orphan*/  AltTargetDomainName; TYPE_2__ Key; int /*<<< orphan*/  KeyType; TYPE_1__ Ticket; int /*<<< orphan*/  TicketKvno; int /*<<< orphan*/  TicketEncType; } ;
typedef  TYPE_3__* PKIWI_KERBEROS_TICKET ;
typedef  TYPE_4__* PBERVAL ;
typedef  int /*<<< orphan*/  BerElement ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY_ASN1_ID_SEQUENCE ; 
 int /*<<< orphan*/  ID_APP_ENCKRBCREDPART ; 
 int /*<<< orphan*/  ID_APP_KRB_CRED ; 
 int /*<<< orphan*/  ID_APP_TICKET ; 
 int /*<<< orphan*/  ID_CTX_ENCKRBCREDPART_TICKET_INFO ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_ENDTIME ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_FLAGS ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_KEY ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_PNAME ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_PREALM ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_RENEW_TILL ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_SNAME ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_SREAL ; 
 int /*<<< orphan*/  ID_CTX_KRBCREDINFO_STARTTIME ; 
 int /*<<< orphan*/  ID_CTX_KRB_CRED_ENC_PART ; 
 int /*<<< orphan*/  ID_CTX_KRB_CRED_MSG_TYPE ; 
 int /*<<< orphan*/  ID_CTX_KRB_CRED_PVNO ; 
 int /*<<< orphan*/  ID_CTX_KRB_CRED_TICKETS ; 
 int /*<<< orphan*/  ID_CTX_TICKET_ENC_PART ; 
 int /*<<< orphan*/  ID_CTX_TICKET_REALM ; 
 int /*<<< orphan*/  ID_CTX_TICKET_SNAME ; 
 int /*<<< orphan*/  ID_CTX_TICKET_TKT_VNO ; 
 int /*<<< orphan*/  KERBEROS_VERSION ; 
 int /*<<< orphan*/  KERB_ETYPE_NULL ; 
 int /*<<< orphan*/  LBER_USE_DER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PBERVAL FUNC13(PKIWI_KERBEROS_TICKET ticket, BOOL valueIsTicket)
{
	BerElement *pBer, *pBerApp;
	PBERVAL pBerVal = NULL, pBerVallApp = NULL;
	if((pBer = FUNC2(LBER_USE_DER)))
	{
		FUNC6(pBer, "t{{t{i}t{i}t{", FUNC0(ID_APP_KRB_CRED), FUNC1(ID_CTX_KRB_CRED_PVNO), KERBEROS_VERSION, FUNC1(ID_CTX_KRB_CRED_MSG_TYPE), ID_APP_KRB_CRED, FUNC1(ID_CTX_KRB_CRED_TICKETS));
		if(!valueIsTicket)
		{
			FUNC6(pBer, "{t{{t{i}t{", FUNC0(ID_APP_TICKET), FUNC1(ID_CTX_TICKET_TKT_VNO), KERBEROS_VERSION, FUNC1(ID_CTX_TICKET_REALM));
			FUNC11(pBer, &ticket->DomainName);
			FUNC6(pBer, "}t{", FUNC1(ID_CTX_TICKET_SNAME));
			FUNC9(pBer, ticket->ServiceName);
			FUNC6(pBer, "}t{", FUNC1(ID_CTX_TICKET_ENC_PART));
			FUNC7(pBer, ticket->TicketEncType, ticket->TicketKvno, ticket->Ticket.Value, ticket->Ticket.Length);
			FUNC6(pBer, "}}}}");
		}
		else FUNC6(pBer, "to", DIRTY_ASN1_ID_SEQUENCE, ticket->Ticket.Value, ticket->Ticket.Length);
		FUNC6(pBer, "}t{", FUNC1(ID_CTX_KRB_CRED_ENC_PART));
		if((pBerApp = FUNC2(LBER_USE_DER)))
		{
			FUNC6(pBerApp, "t{{t{{{t{", FUNC0(ID_APP_ENCKRBCREDPART), FUNC1(ID_CTX_ENCKRBCREDPART_TICKET_INFO), FUNC1(ID_CTX_KRBCREDINFO_KEY));
			FUNC8(pBerApp, ticket->KeyType, ticket->Key.Value, ticket->Key.Length);
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_PREALM));
			FUNC11(pBerApp, &ticket->AltTargetDomainName);
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_PNAME));
			FUNC9(pBerApp, ticket->ClientName);
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_FLAGS));
			FUNC10(pBerApp, ticket->TicketFlags);	/* ID_CTX_KRBCREDINFO_AUTHTIME not present */
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_STARTTIME));
			FUNC12(pBerApp, &ticket->StartTime);
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_ENDTIME));
			FUNC12(pBerApp, &ticket->EndTime);
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_RENEW_TILL));
			FUNC12(pBerApp, &ticket->RenewUntil);
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_SREAL));
			FUNC11(pBerApp, &ticket->DomainName);
			FUNC6(pBerApp, "}t{", FUNC1(ID_CTX_KRBCREDINFO_SNAME));
			FUNC9(pBerApp, ticket->ServiceName);
			FUNC6(pBerApp, "}}}}}}");

			if(FUNC4(pBerApp, &pBerVallApp) >= 0)
				FUNC7(pBer, KERB_ETYPE_NULL, 0, pBerVallApp->bv_val, pBerVallApp->bv_len);
			FUNC5(pBerApp, 1);
		}
		FUNC6(pBer, "}}}");
		FUNC4(pBer, &pBerVal);
		if(pBerVallApp)
			FUNC3(pBerVallApp);
		FUNC5(pBer, 1);
	}
	return pBerVal;
}