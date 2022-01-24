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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  LDAP ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LDAP_AUTH_NEGOTIATE ; 
 void* LDAP_OPT_ON ; 
 int /*<<< orphan*/  LDAP_OPT_PROTOCOL_VERSION ; 
 int /*<<< orphan*/  LDAP_OPT_SIGN ; 
 int /*<<< orphan*/  LDAP_VERSION3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

ULONG FUNC5(PWSTR szFQDN, LDAP** pld)
{
	DWORD dwErr = 0;
	LDAP* ld;
	if((ld = FUNC2(szFQDN, 389)))
	{
		ULONG version = LDAP_VERSION3;
		// Set the version to 3.0 (default is 2.0).
		FUNC3(ld,LDAP_OPT_PROTOCOL_VERSION,(void*) &version);
		// enable LDAP signing - survive policies "network security: LDAP client signing requirements" + "domain controller: LDAP server signing requirements"
		FUNC3(ld,LDAP_OPT_SIGN,LDAP_OPT_ON);
		// ready to be enabled:
		//ldap_set_option(ld,LDAP_OPT_ENCRYPT,LDAP_OPT_ON);

		if(!(dwErr = FUNC1(ld, NULL)))
		{
			if(!(dwErr = FUNC0(ld, NULL, NULL, LDAP_AUTH_NEGOTIATE)))
			{
				*pld = ld;
			}
			else FUNC4(ld);
		}
		else FUNC4(ld);
	}
	return dwErr;
}