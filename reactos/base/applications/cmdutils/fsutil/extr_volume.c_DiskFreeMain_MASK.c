#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  TCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC5(int argc, const TCHAR *argv[])
{
    ULARGE_INTEGER FreeAvail, TotalNumber, TotalNumberFree;

    /* We need a path */
    if (argc < 2)
    {
        FUNC4(stderr, FUNC3("Usage: fsutil volume diskfree <volume path>\n"));
        FUNC4(stderr, FUNC3("\tFor example: fsutil volume diskfree c:\n"));
        return 1;
    }

    if (!FUNC0(argv[1], &FreeAvail, &TotalNumber, &TotalNumberFree))
    {
        FUNC2(FUNC1());
        return 1;
    }

    FUNC4(stdout, FUNC3("Total free bytes\t\t: %I64i\n"), TotalNumberFree.QuadPart);
    FUNC4(stdout, FUNC3("Total bytes\t\t\t: %I64i\n"), TotalNumber.QuadPart);
    FUNC4(stdout, FUNC3("Total free available bytes\t: %I64i\n"), FreeAvail.QuadPart);

    return 0;
}