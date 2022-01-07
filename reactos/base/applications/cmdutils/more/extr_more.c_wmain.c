
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int member_1; TYPE_1__* member_0; } ;
struct TYPE_5__ {int member_0; } ;
typedef char TCHAR ;
typedef int * PWCHAR ;
typedef int * PVOID ;
typedef scalar_t__ ENCODING ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CON_SCREEN ;
typedef TYPE_2__ CON_PAGER ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (char*) ;
 int CloseHandle (scalar_t__) ;
 int ConPuts (int ,char*) ;
 scalar_t__ ConPutsPaging (TYPE_2__*,int ,int ,char*) ;
 int ConResPrintf (int ,int ,char*) ;
 int ConResPuts (int ,int ) ;
 int ConStreamInit (int ,void*,int ,int ) ;
 int ConStreamSetOSHandle (int ,scalar_t__) ;
 scalar_t__ ConWritePaging (TYPE_2__*,int ,int ,int *,scalar_t__) ;
 scalar_t__ CreateFileW (char*,int,int,int *,int ,int ,int *) ;
 scalar_t__ ENCODING_ANSI ;
 scalar_t__ ENCODING_UTF16BE ;
 scalar_t__ ENCODING_UTF16LE ;
 int FALSE ;
 int FILE_BEGIN ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FileCacheBufferSize ;
 scalar_t__ FileGetString (scalar_t__,scalar_t__,int *,int ,int **,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int FlushConsoleInputBuffer (scalar_t__) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetFileSize (scalar_t__,int *) ;
 int GetFullPathNameW (int *,int ,char*,int *) ;
 int GetProcessHeap () ;
 void* GetStdHandle (int ) ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int IDS_FILE_ACCESS ;
 int IDS_USAGE ;
 int INVALID_CP ;
 scalar_t__ INVALID_FILE_SIZE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IsDataUnicode (int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int PagePrompt ;
 scalar_t__ ReadFile (scalar_t__,int *,int ,scalar_t__*,int *) ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetFilePointer (scalar_t__,scalar_t__,int *,int ) ;
 int StdErr ;
 int StdIn ;
 int StdOut ;
 int TRUE ;
 int UTF8Text ;
 scalar_t__ dwFileSize ;
 scalar_t__ dwSumReadBytes ;
 scalar_t__ dwSumReadChars ;
 scalar_t__ hFile ;
 scalar_t__ hKeyboard ;
 scalar_t__ hStdIn ;
 void* hStdOut ;
 scalar_t__ wcscmp (int *,char*) ;

int wmain(int argc, WCHAR* argv[])
{

    CON_SCREEN Screen = {StdOut};
    CON_PAGER Pager = {&Screen, 0};

    int i;

    BOOL bRet, bContinue;

    ENCODING Encoding;
    DWORD SkipBytes = 0;


    PVOID FileCacheBuffer = ((void*)0);
    PWCHAR StringBuffer = ((void*)0);
    DWORD StringBufferLength = 0;
    DWORD dwReadBytes, dwReadChars;

    TCHAR szFullPath[MAX_PATH];

    hStdIn = GetStdHandle(STD_INPUT_HANDLE);
    hStdOut = GetStdHandle(STD_OUTPUT_HANDLE);


    ConStreamInit(StdIn , GetStdHandle(STD_INPUT_HANDLE) , UTF8Text, INVALID_CP);
    ConStreamInit(StdOut, GetStdHandle(STD_OUTPUT_HANDLE), UTF8Text, INVALID_CP);
    ConStreamInit(StdErr, GetStdHandle(STD_ERROR_HANDLE) , UTF8Text, INVALID_CP);





    if (argc > 1 && wcscmp(argv[1], L"/?") == 0)
    {
        ConResPuts(StdOut, IDS_USAGE);
        return 0;
    }






    hKeyboard = CreateFileW(L"CONIN$", GENERIC_READ|GENERIC_WRITE,
                            FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0),
                            OPEN_EXISTING, 0, ((void*)0));
    FlushConsoleInputBuffer(hKeyboard);
    ConStreamSetOSHandle(StdIn, hKeyboard);


    FileCacheBuffer = HeapAlloc(GetProcessHeap(), 0, 4096);
    if (!FileCacheBuffer)
    {
        ConPuts(StdErr, L"Error: no memory\n");
        CloseHandle(hKeyboard);
        return 1;
    }


    if (argc <= 1)
    {




        hFile = hStdIn;


        dwFileSize = 0;
        dwSumReadBytes = dwSumReadChars = 0;





        Encoding = ENCODING_ANSI;

        bContinue = ConPutsPaging(&Pager, PagePrompt, TRUE, L"");
        if (!bContinue)
            goto Quit;

        do
        {
            bRet = FileGetString(hFile, Encoding,
                                 FileCacheBuffer, 4096,
                                 &StringBuffer, &StringBufferLength,
                                 &dwReadBytes, &dwReadChars);
            if (!bRet || dwReadBytes == 0 || dwReadChars == 0)
            {

                break;
            }


            dwSumReadBytes += dwReadBytes;
            dwSumReadChars += dwReadChars;

            bContinue = ConWritePaging(&Pager, PagePrompt, FALSE,
                                       StringBuffer, dwReadChars);

            if (!bContinue)
                goto Quit;
        }
        while (bRet && dwReadBytes > 0);
        goto Quit;
    }


    for (i = 1; i < argc; i++)
    {
        GetFullPathNameW(argv[i], ARRAYSIZE(szFullPath), szFullPath, ((void*)0));
        hFile = CreateFileW(szFullPath,
                            GENERIC_READ,
                            FILE_SHARE_READ,
                            ((void*)0),
                            OPEN_EXISTING,
                            0,
                            ((void*)0));
        if (hFile == INVALID_HANDLE_VALUE)
        {
            ConResPrintf(StdErr, IDS_FILE_ACCESS, szFullPath);
            continue;
        }


        dwFileSize = GetFileSize(hFile, ((void*)0));
        if (dwFileSize == INVALID_FILE_SIZE)
        {
            ConPuts(StdErr, L"ERROR: Invalid file size!\n");
            CloseHandle(hFile);
            continue;
        }




        SetFilePointer(hFile, 0, ((void*)0), FILE_BEGIN);
        bRet = ReadFile(hFile, FileCacheBuffer, 4096, &dwReadBytes, ((void*)0));
        IsDataUnicode(FileCacheBuffer, dwReadBytes, &Encoding, &SkipBytes);
        SetFilePointer(hFile, SkipBytes, ((void*)0), FILE_BEGIN);


        dwSumReadBytes = dwSumReadChars = 0;

        bContinue = ConPutsPaging(&Pager, PagePrompt, TRUE, L"");
        if (!bContinue)
        {
            CloseHandle(hFile);
            goto Quit;
        }

        do
        {
            bRet = FileGetString(hFile, Encoding,
                                 FileCacheBuffer, 4096,
                                 &StringBuffer, &StringBufferLength,
                                 &dwReadBytes, &dwReadChars);
            if (!bRet || dwReadBytes == 0 || dwReadChars == 0)
            {




                break;
            }


            dwSumReadBytes += dwReadBytes;
            dwSumReadChars += dwReadChars;

            if ((Encoding == ENCODING_UTF16LE) || (Encoding == ENCODING_UTF16BE))
            {
                bContinue = ConWritePaging(&Pager, PagePrompt, FALSE,
                                           FileCacheBuffer, dwReadChars);
            }
            else
            {
                bContinue = ConWritePaging(&Pager, PagePrompt, FALSE,
                                           StringBuffer, dwReadChars);
            }

            if (!bContinue)
            {
                CloseHandle(hFile);
                goto Quit;
            }
        }
        while (bRet && dwReadBytes > 0);

        CloseHandle(hFile);
    }

Quit:
    if (StringBuffer) HeapFree(GetProcessHeap(), 0, StringBuffer);
    HeapFree(GetProcessHeap(), 0, FileCacheBuffer);
    CloseHandle(hKeyboard);
    return 0;
}
