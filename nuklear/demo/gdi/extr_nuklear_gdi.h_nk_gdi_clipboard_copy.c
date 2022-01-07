
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int nk_handle ;
typedef scalar_t__ HGLOBAL ;


 int CF_UNICODETEXT ;
 int CP_UTF8 ;
 int CloseClipboard () ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int ,int) ;
 scalar_t__ GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 int MultiByteToWideChar (int ,int ,char const*,int,scalar_t__*,int) ;
 scalar_t__ OpenClipboard (int *) ;
 int SetClipboardData (int ,scalar_t__) ;

__attribute__((used)) static void
nk_gdi_clipboard_copy(nk_handle usr, const char *text, int len)
{
    if (OpenClipboard(((void*)0)))
    {
        int wsize = MultiByteToWideChar(CP_UTF8, 0, text, len, ((void*)0), 0);
        if (wsize)
        {
            HGLOBAL mem = (HGLOBAL)GlobalAlloc(GMEM_MOVEABLE, (wsize + 1) * sizeof(wchar_t));
            if (mem)
            {
                wchar_t* wstr = (wchar_t*)GlobalLock(mem);
                if (wstr)
                {
                    MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);
                    wstr[wsize] = 0;
                    GlobalUnlock(mem);

                    SetClipboardData(CF_UNICODETEXT, mem);
                }
            }
        }
        CloseClipboard();
    }
}
