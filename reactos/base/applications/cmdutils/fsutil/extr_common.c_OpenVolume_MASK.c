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
typedef  scalar_t__ UINT ;
typedef  int TCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ DRIVE_REMOTE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int const*) ; 
 scalar_t__ FUNC8 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

HANDLE FUNC9(const TCHAR * Volume,
                  BOOLEAN AllowRemote,
                  BOOLEAN NtfsOnly)
{
    UINT Type;
    HANDLE hVolume;
    TCHAR VolumeID[PATH_MAX];

    /* Get volume type */
    if (!AllowRemote && Volume[1] == L':')
    {
        Type = FUNC1(Volume);
        if (Type == DRIVE_REMOTE)
        {
            FUNC6(stderr, FUNC5("FSUTIL needs a local device\n"));
            return INVALID_HANDLE_VALUE;
        }
    }

    /* Get filesystem type */
    if (NtfsOnly)
    {
        TCHAR FileSystem[MAX_PATH + 1];

        FUNC7(VolumeID, FUNC5("\\\\.\\%s\\"), Volume);
        if (!FUNC3(VolumeID, NULL,  0, NULL, NULL, NULL, FileSystem, MAX_PATH + 1))
        {
            FUNC4(FUNC2());
            return INVALID_HANDLE_VALUE;
        }

        if (FUNC8(FileSystem, FUNC5("NTFS")) != 0)
        {
            FUNC6(stderr, FUNC5("FSUTIL needs a NTFS device\n"));
            return INVALID_HANDLE_VALUE;
        }
    }

    /* Create full name */
    FUNC7(VolumeID, FUNC5("\\\\.\\%s"), Volume);

    /* Open the volume */
    hVolume = FUNC0(VolumeID, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE,
                         NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (hVolume == INVALID_HANDLE_VALUE)
    {
        FUNC4(FUNC2());
        return INVALID_HANDLE_VALUE;
    }

    return hVolume;
}