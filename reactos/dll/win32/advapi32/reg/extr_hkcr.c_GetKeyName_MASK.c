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
struct TYPE_7__ {int /*<<< orphan*/  Buffer; int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  NameLength; } ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  TYPE_2__* PKEY_NAME_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  KeyNameInformation ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 

__attribute__((used)) static
LONG
FUNC8(HKEY hKey, PUNICODE_STRING KeyName)
{
    UNICODE_STRING InfoName;
    PKEY_NAME_INFORMATION NameInformation;
    ULONG InfoLength;
    NTSTATUS Status;

    /* Get info length */
    InfoLength = 0;
    Status = FUNC2(hKey, KeyNameInformation, NULL, 0, &InfoLength);
    if (Status != STATUS_BUFFER_TOO_SMALL)
    {
        FUNC0("NtQueryKey returned unexpected Status: 0x%08x\n", Status);
        return FUNC7(Status);
    }

    /* Get it for real */
    NameInformation = FUNC3(FUNC6(), 0, InfoLength);
    if (NameInformation == NULL)
    {
        FUNC0("Failed to allocate %lu bytes", InfoLength);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    Status = FUNC2(hKey, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    if (!FUNC1(Status))
    {
        FUNC5(FUNC6(), 0, NameInformation);
        FUNC0("NtQueryKey failed: 0x%08x\n", Status);
        return FUNC7(Status);
    }

    /* Make it a proper UNICODE_STRING */
    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = NameInformation->NameLength;
    InfoName.Buffer = NameInformation->Name;

    Status = FUNC4(RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE, &InfoName, KeyName);
    if (!FUNC1(Status))
    {
        FUNC5(FUNC6(), 0, NameInformation);
        FUNC0("RtlDuplicateUnicodeString failed: 0x%08x\n", Status);
        return FUNC7(Status);
    }

    FUNC5(FUNC6(), 0, NameInformation);

    return ERROR_SUCCESS;
}