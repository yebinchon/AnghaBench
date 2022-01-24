#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * PSTR ;
typedef  int /*<<< orphan*/  PLDAPMessage ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  scalar_t__ PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 

PSTR FUNC4(PLDAP ld, PLDAPMessage pMessage, PCSTR attr)
{
	PSTR *tmp, result = NULL;
	
	if((tmp = FUNC2(ld, pMessage, (PSTR) attr)))
	{
		if(FUNC1(tmp) == 1)
			FUNC0(&result, tmp[0]);
		FUNC3(tmp);
	}
	return result;
}