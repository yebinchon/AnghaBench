
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int dwFileAttributes; int nFileSizeLow; } ;
typedef TYPE_2__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_11__ {int Length; scalar_t__ Buffer; int MaximumLength; } ;
struct TYPE_13__ {TYPE_1__ Str; } ;
typedef TYPE_3__ SDB_TMP_STR ;
typedef char* PWCHAR ;
typedef TYPE_3__* PSDB_TMP_STR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (scalar_t__,TYPE_2__*) ;
 scalar_t__ FindNextFileW (scalar_t__,TYPE_2__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SIGN_MEDIA_FMT ;
 int SdbpFreeTempStr (TYPE_3__*) ;
 int SdbpInitTempStr (TYPE_3__*) ;
 int SdbpResizeTempStr (TYPE_3__*,int) ;
 scalar_t__ SdbpStrlen (scalar_t__) ;
 int StringCbCopyNW (scalar_t__,int ,scalar_t__,int) ;
 int StringCbPrintfW (scalar_t__,int ,int ,int,scalar_t__) ;
 int TRUE ;
 char* wcsrchr (scalar_t__,char) ;

BOOL SdbpBuildSignMediaId(PSDB_TMP_STR LongPath)
{
    SDB_TMP_STR Scratch;
    PWCHAR Ptr;

    SdbpInitTempStr(&Scratch);
    SdbpResizeTempStr(&Scratch, LongPath->Str.Length / sizeof(WCHAR) + 30);
    StringCbCopyNW(Scratch.Str.Buffer, Scratch.Str.MaximumLength, LongPath->Str.Buffer, LongPath->Str.Length);
    Ptr = wcsrchr(LongPath->Str.Buffer, '\\');
    if (Ptr)
    {
        HANDLE FindHandle;
        WIN32_FIND_DATAW FindData;
        Ptr[1] = '*';
        Ptr[2] = '\0';
        FindHandle = FindFirstFileW(LongPath->Str.Buffer, &FindData);
        if (FindHandle != INVALID_HANDLE_VALUE)
        {
            DWORD SignMedia = 0;
            do
            {
                if (!(FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) && FindData.nFileSizeLow)
                    SignMedia = SignMedia << 1 ^ FindData.nFileSizeLow;
            } while (FindNextFileW(FindHandle, &FindData));

            FindClose(FindHandle);
            SdbpResizeTempStr(LongPath, (LongPath->Str.Length >> 1) + 20);
            StringCbPrintfW(LongPath->Str.Buffer, LongPath->Str.MaximumLength, SIGN_MEDIA_FMT, SignMedia, Scratch.Str.Buffer + 3);
            LongPath->Str.Length = (USHORT)SdbpStrlen(LongPath->Str.Buffer) * sizeof(WCHAR);
            SdbpFreeTempStr(&Scratch);
            return TRUE;
        }
    }
    SdbpFreeTempStr(&Scratch);
    SdbpFreeTempStr(LongPath);
    return FALSE;
}
