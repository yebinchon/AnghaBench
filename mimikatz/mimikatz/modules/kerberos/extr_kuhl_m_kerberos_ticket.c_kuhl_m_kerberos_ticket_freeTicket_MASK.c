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
struct TYPE_4__ {int /*<<< orphan*/  Ticket; int /*<<< orphan*/  Key; int /*<<< orphan*/  Description; int /*<<< orphan*/  AltTargetDomainName; int /*<<< orphan*/  ClientName; int /*<<< orphan*/  TargetDomainName; int /*<<< orphan*/  TargetName; int /*<<< orphan*/  DomainName; int /*<<< orphan*/  ServiceName; } ;
typedef  TYPE_1__* PKIWI_KERBEROS_TICKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(PKIWI_KERBEROS_TICKET ticket)
{
	if(ticket)
	{
		FUNC1(ticket->ServiceName);
		FUNC3(&ticket->DomainName);
		FUNC1(ticket->TargetName);
		FUNC3(&ticket->TargetDomainName);
		FUNC1(ticket->ClientName);
		FUNC3(&ticket->AltTargetDomainName);
		FUNC3(&ticket->Description);
		FUNC2(&ticket->Key);
		FUNC2(&ticket->Ticket);
		FUNC0(ticket);
	}
}