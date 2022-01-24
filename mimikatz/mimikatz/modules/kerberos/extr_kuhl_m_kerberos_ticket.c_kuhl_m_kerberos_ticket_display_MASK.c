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
struct TYPE_8__ {int /*<<< orphan*/  Length; scalar_t__ Value; } ;
struct TYPE_7__ {int /*<<< orphan*/  Length; scalar_t__ Value; } ;
struct TYPE_6__ {scalar_t__ Buffer; } ;
struct TYPE_9__ {TYPE_3__ Ticket; int /*<<< orphan*/  TicketKvno; int /*<<< orphan*/  TicketEncType; TYPE_2__ Key; int /*<<< orphan*/  KeyType; int /*<<< orphan*/  TicketFlags; TYPE_1__ Description; int /*<<< orphan*/  AltTargetDomainName; int /*<<< orphan*/  ClientName; int /*<<< orphan*/  TargetDomainName; int /*<<< orphan*/  TargetName; int /*<<< orphan*/  DomainName; int /*<<< orphan*/  ServiceName; int /*<<< orphan*/  RenewUntil; int /*<<< orphan*/  EndTime; int /*<<< orphan*/  StartTime; } ;
typedef  TYPE_4__* PKIWI_KERBEROS_TICKET ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 

void FUNC7(PKIWI_KERBEROS_TICKET ticket, BOOL withKey, BOOL encodedTicketToo)
{
	FUNC1(L"\n\t   Start/End/MaxRenew: ");
	FUNC5(&ticket->StartTime); FUNC1(L" ; ");
	FUNC5(&ticket->EndTime); FUNC1(L" ; ");
	FUNC5(&ticket->RenewUntil);

	FUNC2(L"\n\t   Service Name ", ticket->ServiceName, &ticket->DomainName);
	FUNC2(L"\n\t   Target Name  ", ticket->TargetName, &ticket->TargetDomainName);
	FUNC2(L"\n\t   Client Name  ", ticket->ClientName, &ticket->AltTargetDomainName);
	if(ticket->Description.Buffer)
		FUNC1(L" ( %wZ )", &ticket->Description);
	FUNC1(L"\n\t   Flags %08x    : ", ticket->TicketFlags);
	FUNC3(ticket->TicketFlags);
	if(withKey)
	{
		FUNC1(L"\n\t   Session Key       : 0x%08x - %s", ticket->KeyType, FUNC4(ticket->KeyType));
		if(ticket->Key.Value)
		{
			FUNC1(L"\n\t     ");
			FUNC6(ticket->Key.Value, ticket->Key.Length, 0);
		}
	}
	FUNC1(L"\n\t   Ticket            : 0x%08x - %s ; kvno = %u", ticket->TicketEncType, FUNC4(ticket->TicketEncType), ticket->TicketKvno);
	
	if(encodedTicketToo)
	{
		FUNC1(L"\n\t     ");
		if(ticket->Ticket.Value)
			FUNC6(ticket->Ticket.Value, ticket->Ticket.Length, 1);
		else FUNC0(L"NULL Ticket Value !");
	}
	else FUNC1(L"\t[...]");
}