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
struct TYPE_7__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_8__ {int /*<<< orphan*/  Str; } ;
typedef  TYPE_2__ SDB_TMP_STR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

BOOL FUNC8(PCWSTR wszPath, BOOL bMachine)
{
    UNICODE_STRING FullKey;
    SDB_TMP_STR LongPath;
    HANDLE KeyHandle;
    NTSTATUS Status;

    if (!FUNC7(&LongPath, wszPath))
        return FALSE;

    Status = FUNC6(&FullKey, bMachine, KEY_SET_VALUE, &KeyHandle);
    if (FUNC0(Status))
    {
        Status = FUNC2(KeyHandle, &LongPath.Str);
        if (!FUNC0(Status))
        {
            FUNC3("Failed to delete value from Key \"%wZ\" Status 0x%lx\n", &FullKey, Status);
            /* This is what we want, so if the key didnt exist, we should not fail :) */
            if (Status == STATUS_OBJECT_NAME_NOT_FOUND)
                Status = STATUS_SUCCESS;
        }
        FUNC1(KeyHandle);
        FUNC4(FullKey.Buffer);
    }
    FUNC5(&LongPath);
    return FUNC0(Status);
}