#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {int /*<<< orphan*/  ldctl_oid; } ;
typedef  TYPE_1__ LDAPControl ;
typedef  int /*<<< orphan*/  LDAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(LDAP *ld, LDAPControl** ctrls, zval* array, int request)
{
	zval tmp1;
	LDAPControl **ctrlp;

	array = FUNC3(array);
	if (!array) {
		return;
	}

	if (ctrls == NULL) {
		return;
	}
	ctrlp = ctrls;
	while (*ctrlp != NULL) {
		FUNC0(ld, *ctrlp, &tmp1, request);
		FUNC1(array, (*ctrlp)->ldctl_oid, &tmp1);
		ctrlp++;
	}
	FUNC2(ctrls);
}