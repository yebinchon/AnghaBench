
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwFileAttributes; int nFileSizeLow; int nFileSizeHigh; } ;
typedef TYPE_2__ WIN32_FIND_DATA ;
struct TYPE_5__ {int LowPart; int HighPart; } ;
struct TYPE_7__ {int QuadPart; TYPE_1__ u; } ;
typedef int LPTSTR ;
typedef int LONGLONG ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int BREAK_INPUT ;
 int BufferSize ;
 scalar_t__ CheckCtrlBreak (int ) ;
 int CloseHandle (scalar_t__) ;
 int ConOutPrintf (int ,int,...) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int DEL_ATTRIBUTES ;
 int DEL_FORCE ;
 int DEL_WIPE ;
 int DeleteFile (int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_FLAG_WRITE_THROUGH ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int SetFileAttributes (int ,int ) ;
 int WriteFile (scalar_t__,int*,int,int*,int *) ;
 int _T (char*) ;
 int rand () ;
 int szDeleteWipe ;

__attribute__((used)) static BOOL
RemoveFile (LPTSTR lpFileName, DWORD dwFlags, WIN32_FIND_DATA* f)
{



    if (CheckCtrlBreak(BREAK_INPUT))
        return 1;





    if ((dwFlags & DEL_ATTRIBUTES) || (dwFlags & DEL_FORCE))
    {
        if (f->dwFileAttributes & FILE_ATTRIBUTE_READONLY)
        {




            SetFileAttributes(lpFileName,FILE_ATTRIBUTE_NORMAL);
        }
    }

    if (dwFlags & DEL_WIPE)
    {
        HANDLE file;
        DWORD temp;

        BYTE buffer[65536];
        LONGLONG i;
        LARGE_INTEGER FileSize;

        FileSize.u.HighPart = f->nFileSizeHigh;
        FileSize.u.LowPart = f->nFileSizeLow;

        for(i = 0; i < 65536; i++)
        {
            buffer[i]=rand() % 256;
        }
        file = CreateFile (lpFileName, GENERIC_WRITE, 0, ((void*)0), OPEN_EXISTING, FILE_FLAG_WRITE_THROUGH, ((void*)0));
        if (file != INVALID_HANDLE_VALUE)
        {
            for(i = 0; i < (FileSize.QuadPart - 65536); i += 65536)
            {
                WriteFile (file, buffer, 65536, &temp, ((void*)0));
                ConOutPrintf (_T("%I64d%% %s\r"),(i * (LONGLONG)100)/FileSize.QuadPart,szDeleteWipe);
            }
            WriteFile (file, buffer, (DWORD)(FileSize.QuadPart - i), &temp, ((void*)0));
            ConOutPrintf (_T("100%% %s\n"),szDeleteWipe);
            CloseHandle (file);
        }
    }

    return DeleteFile (lpFileName);
}
