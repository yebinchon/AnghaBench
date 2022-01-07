
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef int TCHAR ;
typedef int * LPBYTE ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ FILETIME ;
typedef int DWORD ;
typedef int BOOL ;


 int BREAK_INPUT ;
 int BUFF_SIZE ;
 int CREATE_ALWAYS ;
 scalar_t__ CheckCtrlBreak (int ) ;
 int CloseHandle (scalar_t__) ;
 int ConOutResPaging (int ,int ) ;
 int ConOutResPrintf (int ,int *) ;
 int ConOutResPuts (int ) ;
 scalar_t__ CreateFile (int *,int ,int ,int *,int ,int ,int *) ;
 int DeleteFile (int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FilePromptYNA (int ) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetFileAttributes (int *) ;
 int GetFileTime (scalar_t__,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int GetPathCase (int *,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IsExistingFile (int *) ;
 int MAX_PATH ;
 int MEM_COMMIT ;
 int MEM_RELEASE ;
 int OPEN_EXISTING ;
 int PAGE_READWRITE ;
 int REPLACE_ADD ;
 int REPLACE_CONFIRM ;
 int REPLACE_UPDATE ;
 int ReadFile (scalar_t__,int *,int ,int*,int *) ;
 int STRING_COPY_ERROR1 ;
 int STRING_COPY_ERROR3 ;
 int STRING_ERROR_OUT_OF_MEMORY ;
 int STRING_REPLACE_ERROR7 ;
 int STRING_REPLACE_HELP10 ;
 int STRING_REPLACE_HELP11 ;
 int STRING_REPLACE_HELP5 ;
 int STRING_REPLACE_HELP9 ;
 int SetFileAttributes (int *,int) ;
 int SetFileTime (scalar_t__,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int TRUE ;
 int * VirtualAlloc (int *,int ,int ,int ) ;
 int VirtualFree (int *,int ,int ) ;
 int WriteFile (scalar_t__,int *,int,int*,int *) ;
 int _tcscmp (int *,int *) ;
 int _totupper (int ) ;
 int nErrorLevel ;

INT replace(TCHAR source[MAX_PATH], TCHAR dest[MAX_PATH], DWORD dwFlags, BOOL *doMore)
{
    TCHAR d[MAX_PATH];
    TCHAR s[MAX_PATH];
    HANDLE hFileSrc, hFileDest;
    DWORD dwAttrib, dwRead, dwWritten;
    LPBYTE buffer;
    BOOL bEof = FALSE;
    FILETIME srcCreationTime, destCreationTime, srcLastAccessTime, destLastAccessTime;
    FILETIME srcLastWriteTime, destLastWriteTime;
    GetPathCase(source, s);
    GetPathCase(dest, d);
    s[0] = _totupper(s[0]);
    d[0] = _totupper(d[0]);






    hFileSrc = CreateFile (source, GENERIC_READ, FILE_SHARE_READ,((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (hFileSrc == INVALID_HANDLE_VALUE)
    {
        ConOutResPrintf(STRING_COPY_ERROR1, source);
        return 0;
    }





    GetFileTime (hFileSrc, &srcCreationTime, &srcLastAccessTime, &srcLastWriteTime);





    dwAttrib = GetFileAttributes (source);

    if (IsExistingFile (dest))
    {




        SetFileAttributes(dest,FILE_ATTRIBUTE_NORMAL);




        if (dwFlags & REPLACE_UPDATE)
        {

            hFileDest = CreateFile(dest, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING,
                0, ((void*)0));

            if (hFileDest == INVALID_HANDLE_VALUE)
            {
                ConOutResPrintf(STRING_COPY_ERROR1, dest);
                CloseHandle (hFileSrc);
                return 0;
            }


            GetFileTime (hFileDest, &destCreationTime, &destLastAccessTime, &destLastWriteTime);
            if (!((srcLastWriteTime.dwHighDateTime > destLastWriteTime.dwHighDateTime) ||
                    (srcLastWriteTime.dwHighDateTime == destLastWriteTime.dwHighDateTime &&
                     srcLastWriteTime.dwLowDateTime > destLastWriteTime.dwLowDateTime)))
            {
                CloseHandle (hFileSrc);
                CloseHandle (hFileDest);
                return 0;
            }
            CloseHandle (hFileDest);
        }

        DeleteFile (dest);
    }


    if (dwFlags & REPLACE_CONFIRM)
    {

        if (dwFlags & REPLACE_ADD)
            ConOutResPrintf(STRING_REPLACE_HELP9, dest);
        else
            ConOutResPrintf(STRING_REPLACE_HELP10, dest);
        if ( !FilePromptYNA (0))
        {
            CloseHandle (hFileSrc);
            return 0;
        }
    }


    if (dwFlags & REPLACE_ADD)
        ConOutResPrintf(STRING_REPLACE_HELP11, dest);
    else
        ConOutResPrintf(STRING_REPLACE_HELP5, dest);


    if (!_tcscmp(s, d))
    {
        ConOutResPaging(TRUE, STRING_REPLACE_ERROR7);
        CloseHandle (hFileSrc);
        *doMore = FALSE;
        return 0;
    }


    hFileDest = CreateFile (dest, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    if (hFileDest == INVALID_HANDLE_VALUE)
    {
        CloseHandle (hFileSrc);
        ConOutResPaging(TRUE, STRING_REPLACE_ERROR7);
        *doMore = FALSE;
        return 0;
    }


    buffer = VirtualAlloc(((void*)0), BUFF_SIZE, MEM_COMMIT, PAGE_READWRITE);
    if (buffer == ((void*)0))
    {
        CloseHandle (hFileDest);
        CloseHandle (hFileSrc);
        ConOutResPaging(TRUE, STRING_ERROR_OUT_OF_MEMORY);
        return 0;
    }


    SetFileAttributes (dest, dwAttrib);
    SetFileTime (hFileDest, &srcCreationTime, &srcLastAccessTime, &srcLastWriteTime);
    do
    {

        ReadFile (hFileSrc, buffer, BUFF_SIZE, &dwRead, ((void*)0));


        if (dwRead == 0)
            break;


        WriteFile (hFileDest, buffer, dwRead, &dwWritten, ((void*)0));


        if (dwWritten != dwRead || CheckCtrlBreak(BREAK_INPUT))
        {
            ConOutResPuts(STRING_COPY_ERROR3);
            VirtualFree (buffer, 0, MEM_RELEASE);
            CloseHandle (hFileDest);
            CloseHandle (hFileSrc);
            nErrorLevel = 1;
            return 0;
        }
    }
    while (!bEof);


    VirtualFree (buffer, 0, MEM_RELEASE);
    CloseHandle (hFileDest);
    CloseHandle (hFileSrc);


    return 1;
}
