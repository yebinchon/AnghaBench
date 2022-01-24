#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bv_len; scalar_t__ bv_val; } ;
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  int /*<<< orphan*/  PLDAPMessage ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  scalar_t__ PCWCHAR ;
typedef  scalar_t__ PCHAR ;
typedef  TYPE_1__* PBERVAL ;
typedef  int /*<<< orphan*/  BERVAL ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int FUNC3 (TYPE_1__**) ; 
 TYPE_1__** FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 

PBERVAL FUNC6(PLDAP ld, PLDAPMessage pMessage, PCWCHAR attr)
{
	PBERVAL *tmp, result = NULL;
	if((tmp = FUNC4(ld, pMessage, (PWCHAR) attr)))
	{
		if(FUNC3(tmp) == 1)
		{
			if((result = (PBERVAL) FUNC0(LPTR, sizeof(BERVAL))))
			{
				result->bv_len = tmp[0]->bv_len;
				if((result->bv_val = (PCHAR) FUNC0(LPTR, result->bv_len)))
					FUNC2(result->bv_val, tmp[0]->bv_val, result->bv_len);
				else result = (PBERVAL) FUNC1(result);
			}
		}
		FUNC5(tmp);
	}
	return result;
}