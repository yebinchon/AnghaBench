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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FSCTL_MARK_VOLUME_DIRTY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC7(int argc, const TCHAR *argv[])
{
    HANDLE Volume;
    DWORD BytesRead;

    /* We need a volume (letter or GUID) */
    if (argc < 2)
    {
        FUNC6(stderr, FUNC5("Usage: fsutil dirty set <volume>\n"));
        FUNC6(stderr, FUNC5("\tFor example: fsutil dirty set c:\n"));
        return 1;
    }

    /* Get a handle for the volume */
    Volume = FUNC3(argv[1], FALSE, FALSE);
    if (Volume == INVALID_HANDLE_VALUE)
    {
        return 1;
    }

    /* And set the dirty bit */
    if (FUNC1(Volume, FSCTL_MARK_VOLUME_DIRTY, NULL, 0, NULL, 0, &BytesRead, NULL) == FALSE)
    {
        FUNC4(FUNC2());
        FUNC0(Volume);
        return 1;
    }

    FUNC0(Volume);

    /* Print the status */
    FUNC6(stdout, FUNC5("The %s volume is now marked as dirty\n"), argv[1]);

    return 0;
}