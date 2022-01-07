
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef scalar_t__ PVOID ;
typedef int LPCWSTR ;
typedef int LPCSTR ;
typedef int HGLOBAL ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ CLIP_FMT_31 ;
 scalar_t__ CLIP_FMT_BK ;
 scalar_t__ CLIP_FMT_NT ;
 int ClipboardReadMemoryBlock (int ,int,int) ;
 int FALSE ;
 int GlobalFree (int ) ;
 int RegisterClipboardFormatA (int ) ;
 int RegisterClipboardFormatW (int ) ;
 int SetClipboardData (int,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL ClipboardReadMemory(HANDLE hFile, DWORD dwFormat, DWORD dwOffset, DWORD dwLength, WORD FileIdentifier, PVOID lpFormatName)
{
    HGLOBAL hData;
    DWORD dwTemp = 0;

    hData = ClipboardReadMemoryBlock(hFile, dwOffset, dwLength);
    if (!hData)
        return FALSE;

    if ((dwFormat >= 0xC000) && (dwFormat <= 0xFFFF))
    {
        if (FileIdentifier == CLIP_FMT_31)
            dwTemp = RegisterClipboardFormatA((LPCSTR)lpFormatName);
        else if ((FileIdentifier == CLIP_FMT_NT) || (FileIdentifier == CLIP_FMT_BK))
            dwTemp = RegisterClipboardFormatW((LPCWSTR)lpFormatName);

        if (!dwTemp)
        {
            GlobalFree(hData);
            return FALSE;
        }
    }
    else
    {
        dwTemp = dwFormat;
    }

    if (!SetClipboardData(dwTemp, hData))
    {
        GlobalFree(hData);
        return FALSE;
    }

    return TRUE;
}
