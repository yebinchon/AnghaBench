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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ValueBuffer ;
struct TYPE_7__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  DataLength; scalar_t__ Data; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_2__* PVOID ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  TYPE_2__* PKEY_VALUE_PARTIAL_INFORMATION ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KEY_VALUE_PARTIAL_INFORMATION ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  KeyValuePartialInformation ; 
 int MAX_LAYER_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC7(PUNICODE_STRING FullPath, PWSTR pwszLayers, PDWORD pdwBytes, BOOL bMachine)
{
    UNICODE_STRING FullKey;
    ULONG ValueBuffer[(MAX_LAYER_LENGTH * sizeof(WCHAR) + sizeof(KEY_VALUE_PARTIAL_INFORMATION) + sizeof(ULONG) - 1) / sizeof(ULONG)];
    PKEY_VALUE_PARTIAL_INFORMATION PartialInfo = (PVOID)ValueBuffer;
    ULONG Length = 0;
    HANDLE KeyHandle;
    NTSTATUS Status;

    Status = FUNC5(&FullKey, bMachine, KEY_QUERY_VALUE, &KeyHandle);
    if (FUNC0(Status))
    {
        Status = FUNC2(KeyHandle, FullPath, KeyValuePartialInformation, PartialInfo, sizeof(ValueBuffer), &Length);
        if (FUNC0(Status))
        {
            FUNC6(pwszLayers, *pdwBytes, (PCWSTR)PartialInfo->Data, PartialInfo->DataLength);
            *pdwBytes = PartialInfo->DataLength;
        }
        else
        {
            FUNC3("Failed to read value info from Key \"%wZ\" Status 0x%lx\n", &FullKey, Status);
        }
        FUNC1(KeyHandle);
        FUNC4(FullKey.Buffer);
    }
    return FUNC0(Status);
}