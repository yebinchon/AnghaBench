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
struct TYPE_5__ {int dwKeyword; int ValueSize; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PKULL_M_CRED_ATTRIBUTE ;
typedef  int PBYTE ;
typedef  int /*<<< orphan*/  KULL_M_CRED_ATTRIBUTE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int) ; 

BOOL FUNC3(PVOID data, PKULL_M_CRED_ATTRIBUTE **Attributes, DWORD count)
{
	BOOL status = FALSE;
	DWORD i, j;
	
	if(((*Attributes) = (PKULL_M_CRED_ATTRIBUTE *) FUNC0(LPTR, count * sizeof(PKULL_M_CRED_ATTRIBUTE))))
	{
		for(i = 0, j = 0, status = TRUE; (i < count) && status; i++)
		{
			if(((*Attributes)[i] = FUNC1((PBYTE) data + j)))
				j +=  sizeof(KULL_M_CRED_ATTRIBUTE) - 2 * sizeof(PVOID) + (*Attributes)[i]->dwKeyword + (*Attributes)[i]->ValueSize;
			else status = FALSE;
		}
	}
	if(!status)
	{
		FUNC2(*Attributes, count);
		*Attributes = NULL;
	}
	return status;
}