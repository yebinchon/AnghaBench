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
struct TYPE_3__ {size_t Cols; scalar_t__* Content; } ;
typedef  TYPE_1__ WhoamiTable ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(WhoamiTable *pTable, WCHAR *Entry, UINT Row, UINT Col)
{
    LPWSTR Target = FUNC1(FUNC0(),
                              HEAP_ZERO_MEMORY,
                              1 + FUNC4(Entry) * sizeof(Entry[0]));

    // wprintf(L"DEBUG: Setting table value '%lp' '%ls' for %lu %lu.\n", entry, entry, row, col);

    if (!Target)
        FUNC2(1);

    FUNC3(Target, Entry);

    pTable->Content[Row * pTable->Cols + Col] = Target;
}