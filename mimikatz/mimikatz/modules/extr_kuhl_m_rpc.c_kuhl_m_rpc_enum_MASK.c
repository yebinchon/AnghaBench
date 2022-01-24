#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ UUID ;
struct TYPE_8__ {TYPE_1__ Uuid; } ;
typedef  scalar_t__ RPC_WSTR ;
typedef  scalar_t__ RPC_STATUS ;
typedef  TYPE_2__ RPC_IF_ID ;
typedef  int /*<<< orphan*/  RPC_EP_INQ_HANDLE ;
typedef  scalar_t__ RPC_BINDING_HANDLE ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * KULL_M_RPC_AUTH_IDENTITY_HANDLE_NULLSESSION ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  RPC_C_AUTHN_GSS_NEGOTIATE ; 
 int /*<<< orphan*/  RPC_C_EP_ALL_ELTS ; 
 int /*<<< orphan*/  RPC_C_IMP_LEVEL_DEFAULT ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_X_NO_MORE_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

NTSTATUS FUNC13(int argc, wchar_t * argv[])
{
	RPC_STATUS status, enumStatus;
	RPC_BINDING_HANDLE Binding, EnumBinding;
	RPC_EP_INQ_HANDLE InquiryContext;
	RPC_IF_ID IfId;
	RPC_WSTR Annotation, bindString;
	UUID prev = {0};
	BOOL isNullSession, sameId, avoidMsBugWasHere = FALSE;
	PCWSTR szRemote, szProtSeq;
	DWORD AuthnSvc;
	
	FUNC11(argc, argv, &szRemote, &szProtSeq, NULL, NULL, &AuthnSvc, RPC_C_AUTHN_GSS_NEGOTIATE, &isNullSession, NULL, TRUE);
	if(FUNC9(NULL, szProtSeq, szRemote, NULL, NULL, FALSE, AuthnSvc, isNullSession ? KULL_M_RPC_AUTH_IDENTITY_HANDLE_NULLSESSION : NULL, RPC_C_IMP_LEVEL_DEFAULT, &Binding, NULL))
	{
		status = FUNC3(Binding, RPC_C_EP_ALL_ELTS, NULL, 0, NULL, &InquiryContext);
		if(status == RPC_S_OK)
		{
			do
			{
				enumStatus = FUNC5(InquiryContext, &IfId, &EnumBinding, NULL, &Annotation);
				if(enumStatus == RPC_S_OK)
				{
					avoidMsBugWasHere = TRUE;
					sameId = FUNC7(&IfId.Uuid, &prev);
					if(!sameId)
					{
						FUNC8(L"UUID: ");
						FUNC12(&IfId.Uuid);
						if(Annotation)
						{
							FUNC8(L"\t%s", Annotation);
							FUNC6(&Annotation);
						}
						FUNC8(L"\n");
						prev = IfId.Uuid;
					}
					if(EnumBinding)
					{
						status = FUNC2(EnumBinding, &bindString);
						if(status == RPC_S_OK)
						{
							FUNC8(L"\t%s\n", bindString);
							FUNC6(&bindString);
						}
						else FUNC0(L"RpcBindingToStringBinding: %08x\n", status);
						FUNC1(&EnumBinding);
					}
				}
			} while(enumStatus == RPC_S_OK);

			if(!avoidMsBugWasHere && (enumStatus == RPC_X_NO_MORE_ENTRIES))
				FUNC0(L"RpcMgmtEpEltInqNext: %08x, maybe really no EP, maybe network problem\n", enumStatus);
			else if(enumStatus != RPC_X_NO_MORE_ENTRIES)
				FUNC0(L"RpcMgmtEpEltInqNext: %08x\n", enumStatus);
			status = FUNC4(&InquiryContext);
			if(status != RPC_S_OK)
				FUNC0(L"RpcMgmtEpEltInqDone: %08x\n", status);
		}
		else FUNC0(L"RpcMgmtEpEltInqBegin: %08x\n", status);
		FUNC10(&Binding);
	}
	return STATUS_SUCCESS;
}