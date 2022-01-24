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
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kuhl_m_crypto_l_stores_enumCallback_print ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,char*) ; 

NTSTATUS FUNC5(int argc, wchar_t * argv[])
{
	DWORD dwSystemStore, nbStore = 0;
	PCWCHAR szSystemStore;
	FUNC4(argc, argv, L"systemstore", &szSystemStore, L"CURRENT_USER"/*kuhl_m_crypto_system_stores[0].name*/);
	dwSystemStore = FUNC3(szSystemStore);
	FUNC2(L"Asking for System Store \'%s\' (0x%08x)\n", szSystemStore, dwSystemStore);

	if(!FUNC0(dwSystemStore, NULL, &nbStore, kuhl_m_crypto_l_stores_enumCallback_print))
		FUNC1(L"CertEnumSystemStore");

	return STATUS_SUCCESS;
}