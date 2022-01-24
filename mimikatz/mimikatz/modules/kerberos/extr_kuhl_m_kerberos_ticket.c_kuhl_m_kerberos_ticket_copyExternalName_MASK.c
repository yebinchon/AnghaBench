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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_5__ {int NameCount; int /*<<< orphan*/ * Names; int /*<<< orphan*/  NameType; } ;
typedef  TYPE_1__* PKERB_EXTERNAL_NAME ;
typedef  int /*<<< orphan*/  KERB_EXTERNAL_NAME ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PKERB_EXTERNAL_NAME FUNC3(PKERB_EXTERNAL_NAME pName)
{
	PKERB_EXTERNAL_NAME dest = NULL;
	DWORD i;
	BOOL status = TRUE;
	if(pName)
	{
		if((dest = (PKERB_EXTERNAL_NAME) FUNC0(LPTR, sizeof(KERB_EXTERNAL_NAME) + ((pName->NameCount - 1) * sizeof(UNICODE_STRING)))))
		{
			dest->NameType = pName->NameType;
			dest->NameCount = pName->NameCount;
			for(i = 0; i < pName->NameCount; i++)
				status &= FUNC2(&pName->Names[i], &dest->Names[i]);

			if(!status)
				dest = (PKERB_EXTERNAL_NAME) FUNC1(dest);
		}
	}
	return dest;
}