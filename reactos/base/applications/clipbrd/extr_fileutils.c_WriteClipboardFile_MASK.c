#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_10__ {int /*<<< orphan*/  hMainWnd; int /*<<< orphan*/  hInstance; } ;
struct TYPE_9__ {int wFileIdentifier; int wFormatCount; int /*<<< orphan*/  szName; scalar_t__ dwOffData; scalar_t__ dwLenData; scalar_t__ dwFormatID; } ;
typedef  TYPE_1__* PVOID ;
typedef  TYPE_1__ NTCLIPFORMATHEADER ;
typedef  TYPE_1__ NTCLIPFILEHEADER ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ CLIPFORMATHEADER ;
typedef  TYPE_1__ CLIPFILEHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CLIP_FMT_31 130 
#define  CLIP_FMT_BK 129 
#define  CLIP_FMT_NT 128 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_INVALID_FILE_FORMAT ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 TYPE_8__ Globals ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ INVALID_SET_FILE_POINTER ; 
 int MB_ICONSTOP ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_1__*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(LPCWSTR lpFileName, WORD wFileIdentifier)
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
    // PVOID szName;

    HANDLE hFile;
    DWORD dwBytesWritten;
    int i;

    /* Create the file for write access */
    hFile = FUNC4(lpFileName, GENERIC_WRITE, 0, NULL,
                        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC9(Globals.hMainWnd);
        goto done;
    }

    wFormatCount = FUNC3();

    /* Select the file format and setup the header according to the clipboard file format ID */
    switch (wFileIdentifier)
    {
        case CLIP_FMT_31:
            SizeOfFileHeader   = sizeof(CLIPFILEHEADER);
            SizeOfFormatHeader = sizeof(CLIPFORMATHEADER);
            pClipFileHeader    = &ClipFileHeader;
            pClipFormatArray   = &ClipFormatArray;

            ClipFileHeader.wFileIdentifier = CLIP_FMT_31; // wFileIdentifier
            ClipFileHeader.wFormatCount    = wFormatCount;
            break;

        case CLIP_FMT_NT:
        case CLIP_FMT_BK:
            SizeOfFileHeader   = sizeof(NTCLIPFILEHEADER);
            SizeOfFormatHeader = sizeof(NTCLIPFORMATHEADER);
            pClipFileHeader    = &NtClipFileHeader;
            pClipFormatArray   = &NtClipFormatArray;

            NtClipFileHeader.wFileIdentifier = CLIP_FMT_NT; // wFileIdentifier
            NtClipFileHeader.wFormatCount    = wFormatCount;
            break;

        default:
            FUNC6(Globals.hMainWnd, Globals.hInstance, ERROR_INVALID_FILE_FORMAT, 0, MB_ICONSTOP | MB_OK);
            goto done;
    }

    /* Write the header */
    FUNC8(hFile, 0, NULL, FILE_BEGIN);
    if (!FUNC10(hFile, pClipFileHeader, SizeOfFileHeader, &dwBytesWritten, NULL) ||
        dwBytesWritten != SizeOfFileHeader)
    {
        FUNC9(Globals.hMainWnd);
        goto done;
    }

    /* Compute where the data should start (after the file header and the format array) */
    dwOffData = SizeOfFileHeader + wFormatCount * SizeOfFormatHeader;

    /* Loop through each format and save the data */
    i = 0;
    dwFormatID = FUNC5(0);
    while (dwFormatID)
    {
        if (i >= wFormatCount)
        {
            /* Must never happen! */
            FUNC12(FALSE);
            break;
        }

        /* Write the clipboard data at the specified offset, and retrieve its length */
        if (!FUNC1(hFile, dwFormatID, dwOffData, &dwLenData))
            goto Cont;

        /* Write the format data header */
        switch (wFileIdentifier)
        {
            case CLIP_FMT_31:
                FUNC11(pClipFormatArray, sizeof(CLIPFORMATHEADER));
                ((CLIPFORMATHEADER*)pClipFormatArray)->dwFormatID = dwFormatID;
                ((CLIPFORMATHEADER*)pClipFormatArray)->dwLenData  = dwLenData;
                ((CLIPFORMATHEADER*)pClipFormatArray)->dwOffData  = dwOffData;
                FUNC7(Globals.hInstance,
                                            dwFormatID,
                                            FALSE,
                                            ((CLIPFORMATHEADER*)pClipFormatArray)->szName,
                                            FUNC0(((CLIPFORMATHEADER*)pClipFormatArray)->szName));
                break;

            case CLIP_FMT_NT:
            case CLIP_FMT_BK:
                FUNC11(pClipFormatArray, sizeof(NTCLIPFORMATHEADER));
                ((NTCLIPFORMATHEADER*)pClipFormatArray)->dwFormatID = dwFormatID;
                ((NTCLIPFORMATHEADER*)pClipFormatArray)->dwLenData  = dwLenData;
                ((NTCLIPFORMATHEADER*)pClipFormatArray)->dwOffData  = dwOffData;
                FUNC7(Globals.hInstance,
                                            dwFormatID,
                                            TRUE,
                                            ((NTCLIPFORMATHEADER*)pClipFormatArray)->szName,
                                            FUNC0(((NTCLIPFORMATHEADER*)pClipFormatArray)->szName));
                break;
        }

        if (FUNC8(hFile, SizeOfFileHeader + i * SizeOfFormatHeader, NULL, FILE_BEGIN) == INVALID_SET_FILE_POINTER)
        {
            FUNC9(Globals.hMainWnd);
            goto done;
        }

        if (!FUNC10(hFile, pClipFormatArray, SizeOfFormatHeader, &dwBytesWritten, NULL))
        {
            FUNC9(Globals.hMainWnd);
            goto done;
        }

        /* Adjust the offset for the next data stream */
        dwOffData += dwLenData;

Cont:
        i++;
        dwFormatID = FUNC5(dwFormatID);
    }

done:
    if (hFile != INVALID_HANDLE_VALUE)
        FUNC2(hFile);

    return;
}