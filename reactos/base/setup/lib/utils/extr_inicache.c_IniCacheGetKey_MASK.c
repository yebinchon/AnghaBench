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
struct TYPE_3__ {int /*<<< orphan*/ * Data; } ;
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  int /*<<< orphan*/ * PINICACHESECTION ;
typedef  TYPE_1__* PINICACHEKEY ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

NTSTATUS
FUNC3(
    PINICACHESECTION Section,
    PWCHAR KeyName,
    PWCHAR *KeyData)
{
    PINICACHEKEY Key;

    if (Section == NULL || KeyName == NULL || KeyData == NULL)
    {
        FUNC0("Invalid parameter\n");
        return STATUS_INVALID_PARAMETER;
    }

    *KeyData = NULL;

    Key = FUNC1(Section, KeyName, FUNC2(KeyName));
    if (Key == NULL)
    {
        return STATUS_INVALID_PARAMETER;
    }

    *KeyData = Key->Data;

    return STATUS_SUCCESS;
}