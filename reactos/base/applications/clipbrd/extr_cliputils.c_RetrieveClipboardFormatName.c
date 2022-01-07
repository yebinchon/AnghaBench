
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int WCHAR ;
typedef int UINT ;
typedef scalar_t__ PVOID ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef int LPARAM ;
typedef int HINSTANCE ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 int CF_OWNERDISPLAY ;
 int GetClipboardFormatNameA (int,int ,int) ;
 int GetClipboardFormatNameW (int,int ,int) ;
 scalar_t__ GetPredefinedClipboardFormatName (int ,int,scalar_t__,scalar_t__,int) ;
 int LoadStringA (int ,int ,int ,int) ;
 int LoadStringW (int ,int ,int ,int) ;
 int STRING_CF_UNKNOWN ;
 scalar_t__ SendClipboardOwnerMessage (scalar_t__,int ,int ,int ) ;
 int WM_ASKCBFORMATNAME ;
 int ZeroMemory (scalar_t__,int) ;

void
RetrieveClipboardFormatName(HINSTANCE hInstance,
                            UINT uFormat,
                            BOOL Unicode,
                            PVOID lpszFormat,
                            UINT cch)
{
    ZeroMemory(lpszFormat, cch * (Unicode ? sizeof(WCHAR) : sizeof(CHAR)));


    if (GetPredefinedClipboardFormatName(hInstance, uFormat, Unicode, lpszFormat, cch) != 0)
        return;


    if (uFormat == CF_OWNERDISPLAY)
    {
        if (SendClipboardOwnerMessage(Unicode, WM_ASKCBFORMATNAME,
                                      (WPARAM)cch, (LPARAM)lpszFormat) != 0)
        {
            if (Unicode)
                LoadStringW(hInstance, STRING_CF_UNKNOWN, (LPWSTR)lpszFormat, cch);
            else
                LoadStringA(hInstance, STRING_CF_UNKNOWN, (LPSTR)lpszFormat, cch);
        }
        return;
    }


    if (Unicode)
    {
        if (!GetClipboardFormatNameW(uFormat, (LPWSTR)lpszFormat, cch))
            LoadStringW(hInstance, STRING_CF_UNKNOWN, (LPWSTR)lpszFormat, cch);
    }
    else
    {
        if (!GetClipboardFormatNameA(uFormat, (LPSTR)lpszFormat, cch))
            LoadStringA(hInstance, STRING_CF_UNKNOWN, (LPSTR)lpszFormat, cch);
    }
}
