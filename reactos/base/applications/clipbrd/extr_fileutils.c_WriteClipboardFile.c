
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_10__ {int hMainWnd; int hInstance; } ;
struct TYPE_9__ {int wFileIdentifier; int wFormatCount; int szName; scalar_t__ dwOffData; scalar_t__ dwLenData; scalar_t__ dwFormatID; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__ NTCLIPFORMATHEADER ;
typedef TYPE_1__ NTCLIPFILEHEADER ;
typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CLIPFORMATHEADER ;
typedef TYPE_1__ CLIPFILEHEADER ;


 int ARRAYSIZE (int ) ;



 int CREATE_ALWAYS ;
 int ClipboardWriteMemory (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 int CloseHandle (scalar_t__) ;
 int CountClipboardFormats () ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int ERROR_INVALID_FILE_FORMAT ;
 scalar_t__ EnumClipboardFormats (scalar_t__) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_BEGIN ;
 int GENERIC_WRITE ;
 TYPE_8__ Globals ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ INVALID_SET_FILE_POINTER ;
 int MB_ICONSTOP ;
 int MB_OK ;
 int MessageBoxRes (int ,int ,int ,int ,int) ;
 int RetrieveClipboardFormatName (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ SetFilePointer (scalar_t__,scalar_t__,int *,int ) ;
 int ShowLastWin32Error (int ) ;
 int TRUE ;
 int WriteFile (scalar_t__,TYPE_1__*,scalar_t__,scalar_t__*,int *) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int assert (int ) ;

void WriteClipboardFile(LPCWSTR lpFileName, WORD wFileIdentifier)
{
    CLIPFILEHEADER ClipFileHeader;
    CLIPFORMATHEADER ClipFormatArray;
    NTCLIPFILEHEADER NtClipFileHeader;
    NTCLIPFORMATHEADER NtClipFormatArray;
    PVOID pClipFileHeader;
    PVOID pClipFormatArray;
    DWORD SizeOfFileHeader, SizeOfFormatHeader;

    WORD wFormatCount;
    DWORD dwFormatID;
    DWORD dwLenData;
    DWORD dwOffData;


    HANDLE hFile;
    DWORD dwBytesWritten;
    int i;


    hFile = CreateFileW(lpFileName, GENERIC_WRITE, 0, ((void*)0),
                        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        ShowLastWin32Error(Globals.hMainWnd);
        goto done;
    }

    wFormatCount = CountClipboardFormats();


    switch (wFileIdentifier)
    {
        case 130:
            SizeOfFileHeader = sizeof(CLIPFILEHEADER);
            SizeOfFormatHeader = sizeof(CLIPFORMATHEADER);
            pClipFileHeader = &ClipFileHeader;
            pClipFormatArray = &ClipFormatArray;

            ClipFileHeader.wFileIdentifier = 130;
            ClipFileHeader.wFormatCount = wFormatCount;
            break;

        case 128:
        case 129:
            SizeOfFileHeader = sizeof(NTCLIPFILEHEADER);
            SizeOfFormatHeader = sizeof(NTCLIPFORMATHEADER);
            pClipFileHeader = &NtClipFileHeader;
            pClipFormatArray = &NtClipFormatArray;

            NtClipFileHeader.wFileIdentifier = 128;
            NtClipFileHeader.wFormatCount = wFormatCount;
            break;

        default:
            MessageBoxRes(Globals.hMainWnd, Globals.hInstance, ERROR_INVALID_FILE_FORMAT, 0, MB_ICONSTOP | MB_OK);
            goto done;
    }


    SetFilePointer(hFile, 0, ((void*)0), FILE_BEGIN);
    if (!WriteFile(hFile, pClipFileHeader, SizeOfFileHeader, &dwBytesWritten, ((void*)0)) ||
        dwBytesWritten != SizeOfFileHeader)
    {
        ShowLastWin32Error(Globals.hMainWnd);
        goto done;
    }


    dwOffData = SizeOfFileHeader + wFormatCount * SizeOfFormatHeader;


    i = 0;
    dwFormatID = EnumClipboardFormats(0);
    while (dwFormatID)
    {
        if (i >= wFormatCount)
        {

            assert(FALSE);
            break;
        }


        if (!ClipboardWriteMemory(hFile, dwFormatID, dwOffData, &dwLenData))
            goto Cont;


        switch (wFileIdentifier)
        {
            case 130:
                ZeroMemory(pClipFormatArray, sizeof(CLIPFORMATHEADER));
                ((CLIPFORMATHEADER*)pClipFormatArray)->dwFormatID = dwFormatID;
                ((CLIPFORMATHEADER*)pClipFormatArray)->dwLenData = dwLenData;
                ((CLIPFORMATHEADER*)pClipFormatArray)->dwOffData = dwOffData;
                RetrieveClipboardFormatName(Globals.hInstance,
                                            dwFormatID,
                                            FALSE,
                                            ((CLIPFORMATHEADER*)pClipFormatArray)->szName,
                                            ARRAYSIZE(((CLIPFORMATHEADER*)pClipFormatArray)->szName));
                break;

            case 128:
            case 129:
                ZeroMemory(pClipFormatArray, sizeof(NTCLIPFORMATHEADER));
                ((NTCLIPFORMATHEADER*)pClipFormatArray)->dwFormatID = dwFormatID;
                ((NTCLIPFORMATHEADER*)pClipFormatArray)->dwLenData = dwLenData;
                ((NTCLIPFORMATHEADER*)pClipFormatArray)->dwOffData = dwOffData;
                RetrieveClipboardFormatName(Globals.hInstance,
                                            dwFormatID,
                                            TRUE,
                                            ((NTCLIPFORMATHEADER*)pClipFormatArray)->szName,
                                            ARRAYSIZE(((NTCLIPFORMATHEADER*)pClipFormatArray)->szName));
                break;
        }

        if (SetFilePointer(hFile, SizeOfFileHeader + i * SizeOfFormatHeader, ((void*)0), FILE_BEGIN) == INVALID_SET_FILE_POINTER)
        {
            ShowLastWin32Error(Globals.hMainWnd);
            goto done;
        }

        if (!WriteFile(hFile, pClipFormatArray, SizeOfFormatHeader, &dwBytesWritten, ((void*)0)))
        {
            ShowLastWin32Error(Globals.hMainWnd);
            goto done;
        }


        dwOffData += dwLenData;

Cont:
        i++;
        dwFormatID = EnumClipboardFormats(dwFormatID);
    }

done:
    if (hFile != INVALID_HANDLE_VALUE)
        CloseHandle(hFile);

    return;
}
