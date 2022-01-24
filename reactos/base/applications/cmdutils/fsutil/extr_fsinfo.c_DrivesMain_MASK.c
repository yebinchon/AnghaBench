#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC5(int argc, const TCHAR *argv[])
{
    UINT i;
    DWORD Drives;

    /* Get the drives bitmap */
    Drives = FUNC1();
    if (Drives == 0)
    {
        FUNC2(FUNC0());
        return 1;
    }

    /* And output any found drive */
    FUNC4(stdout, FUNC3("Drives:"));
    for (i = 0; i < 26; i++)
    {
        if (Drives & (1 << i))
        {
            FUNC4(stdout, FUNC3(" %c:\\"), 'A' + i);
        }
    }
    FUNC4(stdout, FUNC3("\n"));

    return 0;
}