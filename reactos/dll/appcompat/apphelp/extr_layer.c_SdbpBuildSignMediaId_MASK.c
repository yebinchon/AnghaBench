#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int dwFileAttributes; int nFileSizeLow; } ;
typedef  TYPE_2__ WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
struct TYPE_11__ {int Length; scalar_t__ Buffer; int /*<<< orphan*/  MaximumLength; } ;
struct TYPE_13__ {TYPE_1__ Str; } ;
typedef  TYPE_3__ SDB_TMP_STR ;
typedef  char* PWCHAR ;
typedef  TYPE_3__* PSDB_TMP_STR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  SIGN_MEDIA_FMT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC9 (scalar_t__,char) ; 

BOOL FUNC10(PSDB_TMP_STR LongPath)
{
    SDB_TMP_STR Scratch;
    PWCHAR Ptr;

    FUNC4(&Scratch);
    FUNC5(&Scratch, LongPath->Str.Length / sizeof(WCHAR) + 30);
    FUNC7(Scratch.Str.Buffer, Scratch.Str.MaximumLength, LongPath->Str.Buffer, LongPath->Str.Length);
    Ptr = FUNC9(LongPath->Str.Buffer, '\\');
    if (Ptr)
    {
        HANDLE FindHandle;
        WIN32_FIND_DATAW FindData;
        Ptr[1] = '*';
        Ptr[2] = '\0';
        FindHandle = FUNC1(LongPath->Str.Buffer, &FindData);
        if (FindHandle != INVALID_HANDLE_VALUE)
        {
            DWORD SignMedia = 0;
            do
            {
                if (!(FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) && FindData.nFileSizeLow)
                    SignMedia = SignMedia << 1 ^ FindData.nFileSizeLow;
            } while (FUNC2(FindHandle, &FindData));

            FUNC0(FindHandle);
            FUNC5(LongPath, (LongPath->Str.Length >> 1) + 20);
            FUNC8(LongPath->Str.Buffer, LongPath->Str.MaximumLength, SIGN_MEDIA_FMT, SignMedia, Scratch.Str.Buffer + 3);
            LongPath->Str.Length = (USHORT)FUNC6(LongPath->Str.Buffer) * sizeof(WCHAR);
            FUNC3(&Scratch);
            return TRUE;
        }
    }
    FUNC3(&Scratch);
    FUNC3(LongPath);
    return FALSE;
}