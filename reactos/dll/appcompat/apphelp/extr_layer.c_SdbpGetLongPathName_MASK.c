#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int MaximumLength; int Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_6__ {TYPE_1__ Str; } ;
typedef  TYPE_2__* PSDB_TMP_STR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC4(PCWSTR wszPath, PSDB_TMP_STR Result)
{
    DWORD max = Result->Str.MaximumLength / 2;
    DWORD ret = FUNC1(wszPath, Result->Str.Buffer, max);
    if (ret)
    {
        if (ret >= max)
        {
            FUNC3(Result, ret);
            max = Result->Str.MaximumLength / 2;
            ret = FUNC1(wszPath, Result->Str.Buffer, max);
        }
        if (ret && ret < max)
        {
            Result->Str.Length = ret * 2;
            return TRUE;
        }
    }
    FUNC2("Failed to convert short path to long path error 0x%lx\n", FUNC0());
    return FALSE;
}