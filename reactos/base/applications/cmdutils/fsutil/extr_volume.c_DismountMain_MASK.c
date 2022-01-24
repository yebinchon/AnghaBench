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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FSCTL_DISMOUNT_VOLUME ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC8(int argc, const TCHAR *argv[])
{
    HANDLE Volume;
    ULONG BytesRead;

    /* We need a volume (letter or GUID) */
    if (argc < 2)
    {
        FUNC7(stderr, FUNC6("Usage: fsutil volume dismount <volume>\n"));
        FUNC7(stderr, FUNC6("\tFor example: fsutil volume dismount d:\n"));
        return 1;
    }

    /* Get a handle for the volume */
    Volume = FUNC4(argv[1], FALSE, FALSE);
    if (Volume == INVALID_HANDLE_VALUE)
    {
        return 1;
    }

    /* Attempt to lock the volume */
    if (FUNC3(Volume, TRUE))
    {
        FUNC0(Volume);
        return 1;
    }

    /* Issue the dismount command */
    if (FUNC1(Volume, FSCTL_DISMOUNT_VOLUME, NULL, 0, NULL,
                        0, &BytesRead, NULL) == FALSE)
    {
        FUNC5(FUNC2());
        FUNC3(Volume, FALSE);
        FUNC0(Volume);
        return 1;
    }

    /* Unlock and quit */
    FUNC3(Volume, FALSE);
    FUNC0(Volume);

    FUNC7(stdout, FUNC6("The %s volume has been dismounted\n"), argv[1]);

    return 0;
}