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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

DWORD FUNC6(LPCWSTR szProvider)
{
	DWORD result = 0, provType, tailleRequise, index = 0;
	wchar_t * monProvider;
	for(index = 0, result = 0; !result && FUNC0(index, NULL, 0, &provType, NULL, &tailleRequise); index++)
	{
		if((monProvider = (wchar_t *) FUNC2(LPTR, tailleRequise)))
		{
			if(FUNC0(index, NULL, 0, &provType, monProvider, &tailleRequise))
				if(FUNC5(szProvider, monProvider) == 0)
					result = provType;
			FUNC3(monProvider);
		}
	}
	if(!result && FUNC1() != ERROR_NO_MORE_ITEMS)
		FUNC4(L"CryptEnumProviders");
	return provType;
}