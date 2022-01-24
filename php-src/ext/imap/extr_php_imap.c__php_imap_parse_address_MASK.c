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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {scalar_t__ host; scalar_t__ mailbox; scalar_t__ adl; scalar_t__ personal; struct TYPE_4__* next; } ;
typedef  TYPE_1__ ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_string* FUNC4 (ADDRESS *addresslist, zval *paddress)
{
	zend_string *fulladdress;
	ADDRESS *addresstmp;
	zval tmpvals;

	addresstmp = addresslist;

	fulladdress = FUNC0(addresstmp);

	addresstmp = addresslist;
	do {
		FUNC3(&tmpvals);
		if (addresstmp->personal) FUNC2(&tmpvals, "personal", addresstmp->personal);
		if (addresstmp->adl) FUNC2(&tmpvals, "adl", addresstmp->adl);
		if (addresstmp->mailbox) FUNC2(&tmpvals, "mailbox", addresstmp->mailbox);
		if (addresstmp->host) FUNC2(&tmpvals, "host", addresstmp->host);
		FUNC1(paddress, &tmpvals);
	} while ((addresstmp = addresstmp->next));
	return fulladdress;
}