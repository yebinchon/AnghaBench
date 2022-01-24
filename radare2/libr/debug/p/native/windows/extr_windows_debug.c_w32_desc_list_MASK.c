#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_2__ UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_17__ {int Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_20__ {int HandleCount; TYPE_1__ Name; TYPE_3__* Handles; } ;
struct TYPE_19__ {int ProcessId; int ObjectTypeNumber; int /*<<< orphan*/  Handle; } ;
typedef  TYPE_3__ SYSTEM_HANDLE ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RDebugDesc ;
typedef  TYPE_4__* PVOID ;
typedef  TYPE_2__* PUNICODE_STRING ;
typedef  TYPE_4__* PSYSTEM_HANDLE_INFORMATION ;
typedef  TYPE_4__* POBJECT_TYPE_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_4__* LPVOID ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PROCESS_DUP_HANDLE ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SystemHandleInformation ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  (*) (TYPE_4__*)) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* FUNC10 (TYPE_4__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,TYPE_4__*,int,int*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

RList *FUNC16(int pid) {
	RDebugDesc *desc;
	RList *ret = FUNC8 (free);
	int i;
	HANDLE ph;
	PSYSTEM_HANDLE_INFORMATION handleInfo;
	NTSTATUS status;
	ULONG handleInfoSize = 0x10000;
	LPVOID buff;
	if (!ret) {
		FUNC4 ("win_desc_list/r_list_new");
		return NULL;
	}
	if (!(ph = FUNC14 (PROCESS_DUP_HANDLE, FALSE, pid))) {
		FUNC9 ("win_desc_list/OpenProcess");
		FUNC7 (ret);
		return NULL;
	}
	handleInfo = (PSYSTEM_HANDLE_INFORMATION)FUNC3 (handleInfoSize);
	#define STATUS_INFO_LENGTH_MISMATCH 0xc0000004
	#define SystemHandleInformation 16
	while ((status = FUNC13 (SystemHandleInformation, handleInfo, handleInfoSize, NULL)) == STATUS_INFO_LENGTH_MISMATCH) {
		handleInfoSize *= 2;
		void *tmp = FUNC10 (handleInfo, (size_t)handleInfoSize);
		if (tmp) {
			handleInfo = (PSYSTEM_HANDLE_INFORMATION)tmp;
		}
	}
	if (status) {
		FUNC9 ("win_desc_list/NtQuerySystemInformation");
		FUNC0 (ph);
		FUNC7 (ret);
		return NULL;
	}
	for (i = 0; i < handleInfo->HandleCount; i++) {
		SYSTEM_HANDLE handle = handleInfo->Handles[i];
		HANDLE dupHandle = NULL;
		POBJECT_TYPE_INFORMATION objectTypeInfo;
		PVOID objectNameInfo;
		UNICODE_STRING objectName;
		ULONG returnLength;
		if (handle.ProcessId != pid) {
			continue;
		}
		if (handle.ObjectTypeNumber != 0x1c) {
			continue;
		}
		if (FUNC11 (ph, &handle.Handle, FUNC1 (), &dupHandle, 0, 0, 0)) {
			continue;
		}
		objectTypeInfo = (POBJECT_TYPE_INFORMATION)FUNC3 (0x1000);
		if (FUNC12 (dupHandle, 2, objectTypeInfo, 0x1000, NULL)) {
			FUNC0 (dupHandle);
			continue;
		}
		objectNameInfo = FUNC3 (0x1000);
		if (!objectNameInfo) {
			break;
		}
		if (FUNC12 (dupHandle, 1, objectNameInfo, 0x1000, &returnLength)) {
			void *tmp = FUNC10 (objectNameInfo, returnLength);
			if (tmp) {
				objectNameInfo = tmp;
			}
			if (FUNC12 (dupHandle, 1, objectNameInfo, returnLength, NULL)) {
				FUNC2 (objectTypeInfo);
				FUNC2 (objectNameInfo);
				FUNC0 (dupHandle);
				continue;
			}
		}
		objectName = *(PUNICODE_STRING)objectNameInfo;
		if (objectName.Length) {
			//objectTypeInfo->Name.Length ,objectTypeInfo->Name.Buffer, objectName.Length / 2, objectName.Buffer
			buff = FUNC3 ((size_t)(objectName.Length / 2) + 1);
			FUNC15 (buff, objectName.Buffer, objectName.Length / 2);
			desc = FUNC5 (handle.Handle, buff, 0, '?', 0);
			if (!desc) {
				FUNC2 (buff);
				break;
			}
			FUNC6 (ret, desc);
			FUNC2 (buff);
		} else {
			buff = FUNC3 ((size_t)(objectTypeInfo->Name.Length / 2) + 1);
			FUNC15 (buff, objectTypeInfo->Name.Buffer, objectTypeInfo->Name.Length);
			desc = FUNC5 (handle.Handle, buff, 0, '?', 0);
			if (!desc) {
				FUNC2 (buff);
				break;
			}
			FUNC6 (ret, desc);
			FUNC2 (buff);
		}
		FUNC2 (objectTypeInfo);
		FUNC2 (objectNameInfo);
		FUNC0 (dupHandle);
	}
	FUNC2 (handleInfo);
	FUNC0 (ph);
	return ret;
}