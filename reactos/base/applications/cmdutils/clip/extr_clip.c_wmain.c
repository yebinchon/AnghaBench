
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WCHAR ;
typedef scalar_t__ SIZE_T ;
typedef scalar_t__ LPBYTE ;
typedef scalar_t__ HGLOBAL ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CF_OEMTEXT ;
 int CF_UNICODETEXT ;
 int CloseClipboard () ;
 int ConInitStdStreams () ;
 int ConResPuts (int ,int ) ;
 int EmptyClipboard () ;
 scalar_t__ FILE_TYPE_CHAR ;
 int GMEM_MOVEABLE ;
 int GMEM_ZEROINIT ;
 scalar_t__ GetFileType (int ) ;
 int GetLastError () ;
 int GetStdHandle (int ) ;
 scalar_t__ GlobalAlloc (int,int) ;
 int GlobalFree (scalar_t__) ;
 scalar_t__ GlobalLock (scalar_t__) ;
 scalar_t__ GlobalReAlloc (scalar_t__,scalar_t__,int) ;
 scalar_t__ GlobalSize (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 int IDS_HELP ;
 int IDS_USAGE ;
 scalar_t__ IsDataUnicode (scalar_t__) ;
 int OpenClipboard (int *) ;
 int PrintError (int ) ;
 scalar_t__ ReadFile (int ,scalar_t__,int,scalar_t__*,int *) ;
 int STD_INPUT_HANDLE ;
 int SetClipboardData (int ,scalar_t__) ;
 int StdOut ;
 scalar_t__ wcsncmp (int *,char*,int) ;

int wmain(int argc, wchar_t** argv)
{
    HANDLE hInput;
    DWORD dwBytesRead;
    BOOL bStatus;
    HGLOBAL hBuffer;
    HGLOBAL hTemp;
    LPBYTE lpBuffer;
    SIZE_T dwSize = 0;


    hInput = GetStdHandle(STD_INPUT_HANDLE);
    ConInitStdStreams();


    if (argc > 1 && wcsncmp(argv[1], L"/?", 2) == 0)
    {
        ConResPuts(StdOut, IDS_HELP);
        return 0;
    }

    if (GetFileType(hInput) == FILE_TYPE_CHAR)
    {
        ConResPuts(StdOut, IDS_USAGE);
        return 0;
    }


    hBuffer = GlobalAlloc(GMEM_MOVEABLE | GMEM_ZEROINIT, 4096);
    if (!hBuffer)
        goto Failure;





    do
    {
        lpBuffer = GlobalLock(hBuffer);
        if (!lpBuffer)
            goto Failure;

        bStatus = ReadFile(hInput, lpBuffer + dwSize, 4096, &dwBytesRead, ((void*)0));
        dwSize += dwBytesRead;
        GlobalUnlock(hBuffer);

        hTemp = GlobalReAlloc(hBuffer, GlobalSize(hBuffer) + 4096, GMEM_ZEROINIT);
        if (!hTemp)
            goto Failure;

        hBuffer = hTemp;
    }
    while (bStatus && dwBytesRead > 0);







    hTemp = GlobalReAlloc(hBuffer, dwSize + sizeof(WCHAR), GMEM_ZEROINIT);
    if (hTemp)
        hBuffer = hTemp;


    if (!OpenClipboard(((void*)0)))
        goto Failure;



    EmptyClipboard();

    if (IsDataUnicode(hBuffer))
    {
        SetClipboardData(CF_UNICODETEXT, hBuffer);
    }
    else
    {


        SetClipboardData(CF_OEMTEXT, hBuffer);
    }

    CloseClipboard();
    return 0;

Failure:
    if (hBuffer) GlobalFree(hBuffer);
    PrintError(GetLastError());
    return -1;
}
