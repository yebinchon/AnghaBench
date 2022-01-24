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
struct TYPE_3__ {int /*<<< orphan*/  host; int /*<<< orphan*/  mailbox; int /*<<< orphan*/  adl; int /*<<< orphan*/  personal; struct TYPE_3__* next; } ;
typedef  TYPE_1__ ADDRESS ;

/* Variables and functions */
 int PHP_IMAP_ADDRESS_SIZE_BUF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1 (ADDRESS *addresslist)
{
	ADDRESS *tmp;
	int ret=0, num_ent=0;

	tmp = addresslist;

	if (tmp) do {
		ret += FUNC0(tmp->personal);
		ret += FUNC0(tmp->adl);
		ret += FUNC0(tmp->mailbox);
		ret += FUNC0(tmp->host);
		num_ent++;
	} while ((tmp = tmp->next));

	/*
	 * rfc822_write_address_full() needs some extra space for '<>,', etc.
	 * for this perpouse we allocate additional PHP_IMAP_ADDRESS_SIZE_BUF bytes
	 * by default this buffer is 10 bytes long
	*/
	ret += (ret) ? num_ent*PHP_IMAP_ADDRESS_SIZE_BUF : 0;

	return ret;
}