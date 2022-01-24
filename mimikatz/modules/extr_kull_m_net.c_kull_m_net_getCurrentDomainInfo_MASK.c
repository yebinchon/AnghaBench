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
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PPOLICY_DNS_DOMAIN_INFO ;
typedef  TYPE_1__ LSA_OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  LSA_HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POLICY_VIEW_LOCAL_INFORMATION ; 
 int /*<<< orphan*/  PolicyDnsDomainInformation ; 

BOOL FUNC4(PPOLICY_DNS_DOMAIN_INFO * pDomainInfo)
{
	BOOL status = FALSE;
	LSA_HANDLE hLSA;
	LSA_OBJECT_ATTRIBUTES oaLsa = {0};

	if(FUNC3(FUNC1(NULL, &oaLsa, POLICY_VIEW_LOCAL_INFORMATION, &hLSA)))
	{
		status = FUNC3(FUNC2(hLSA, PolicyDnsDomainInformation, (PVOID *) pDomainInfo));
		FUNC0(hLSA);
	}
	return status;
}