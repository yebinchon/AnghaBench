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
typedef  int /*<<< orphan*/  settings_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  white_list ; 

BOOL
FUNC3(const WCHAR *workdir, int argc, WCHAR *argv[], const settings_t *s)
{
    /* Do not modify argv or *argv -- ideally it should be const WCHAR *const *, but alas...*/

    if (FUNC2(argv[0], L"--config") == 0
        && argc > 1
        && !FUNC0(workdir, argv[1], s)
        )
    {
        return FALSE;
    }

    /* option name starts at 2 characters from argv[i] */
    if (FUNC1(argv[0] + 2, white_list) == -1)   /* not found */
    {
        return FALSE;
    }

    return TRUE;
}