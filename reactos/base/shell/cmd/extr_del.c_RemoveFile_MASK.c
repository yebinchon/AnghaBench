#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dwFileAttributes; int /*<<< orphan*/  nFileSizeLow; int /*<<< orphan*/  nFileSizeHigh; } ;
typedef  TYPE_2__ WIN32_FIND_DATA ;
struct TYPE_5__ {int /*<<< orphan*/  LowPart; int /*<<< orphan*/  HighPart; } ;
struct TYPE_7__ {int QuadPart; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int LONGLONG ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_INPUT ; 
 int BufferSize ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DEL_ATTRIBUTES ; 
 int DEL_FORCE ; 
 int DEL_WIPE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int /*<<< orphan*/  FILE_FLAG_WRITE_THROUGH ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  szDeleteWipe ; 

__attribute__((used)) static BOOL
FUNC9 (LPTSTR lpFileName, DWORD dwFlags, WIN32_FIND_DATA* f)
{
    /*This function is called by CommandDelete and
    does the actual process of deleting the single
    file*/
    if (FUNC0(BREAK_INPUT))
        return 1;

    /*check to see if it is read only and if this is done based on /A
      if it is done by file name, access is denied. However, if it is done
      using the /A switch you must un-read only the file and allow it to be
      deleted*/
    if ((dwFlags & DEL_ATTRIBUTES) || (dwFlags & DEL_FORCE))
    {
        if (f->dwFileAttributes & FILE_ATTRIBUTE_READONLY)
        {
            /*setting file to normal, not saving old attrs first
              because the file is going to be deleted anyways
              so the only thing that matters is that it isn't
              read only.*/
            FUNC5(lpFileName,FILE_ATTRIBUTE_NORMAL);
        }
    }

    if (dwFlags & DEL_WIPE)
    {
        HANDLE file;
        DWORD temp;
#define BufferSize 65536
        BYTE buffer[BufferSize];
        LONGLONG i;
        LARGE_INTEGER FileSize;

        FileSize.u.HighPart = f->nFileSizeHigh;
        FileSize.u.LowPart = f->nFileSizeLow;

        for(i = 0; i < BufferSize; i++)
        {
            buffer[i]=FUNC8() % 256;
        }
        file = FUNC3 (lpFileName, GENERIC_WRITE, 0, NULL, OPEN_EXISTING,  FILE_FLAG_WRITE_THROUGH, NULL);
        if (file != INVALID_HANDLE_VALUE)
        {
            for(i = 0; i < (FileSize.QuadPart - BufferSize); i += BufferSize)
            {
                FUNC6 (file, buffer, BufferSize, &temp, NULL);
                FUNC2 (FUNC7("%I64d%% %s\r"),(i * (LONGLONG)100)/FileSize.QuadPart,szDeleteWipe);
            }
            FUNC6 (file, buffer, (DWORD)(FileSize.QuadPart - i), &temp, NULL);
            FUNC2 (FUNC7("100%% %s\n"),szDeleteWipe);
            FUNC1 (file);
        }
    }

    return FUNC4 (lpFileName);
}