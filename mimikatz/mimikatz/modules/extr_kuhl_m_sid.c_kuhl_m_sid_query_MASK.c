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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

NTSTATUS FUNC4(int argc, wchar_t * argv[])
{
	PLDAP ld;
	PLDAPMessage pMessage = NULL;
	PCWCHAR szSystem = NULL;
	FUNC1(argc, argv, L"system", &szSystem, NULL);

	if(FUNC0(argc, argv, FALSE, szSystem, &ld, &pMessage))
	{
		if(pMessage)
			FUNC2(pMessage);
		FUNC3(ld);
	}
	return STATUS_SUCCESS;
}