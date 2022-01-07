
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
 scalar_t__ GlobalAlloc (int ,int) ;
 int GlobalFree (scalar_t__) ;
 scalar_t__ GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 int MultiByteToWideChar (int ,int ,char const*,int,scalar_t__*,int) ;
 int OpenClipboard (int *) ;
 int SetClipboardData (int ,scalar_t__) ;

__attribute__((used)) static void
nk_gdip_clipboard_copy(nk_handle usr, const char *text, int len)
{
    HGLOBAL mem;
    wchar_t* wstr;
    int wsize;
    (void)usr;

    if (!OpenClipboard(((void*)0)))
        return;

    wsize = MultiByteToWideChar(CP_UTF8, 0, text, len, ((void*)0), 0);
    if (!wsize) {
        CloseClipboard();
        return;
    }

    mem = (HGLOBAL)GlobalAlloc(GMEM_MOVEABLE, (wsize + 1) * sizeof(wchar_t));
    if (!mem) {
        CloseClipboard();
        return;
    }

    wstr = (wchar_t*)GlobalLock(mem);
    if (!wstr) {
        GlobalFree(mem);
        CloseClipboard();
        return;
    }

    MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);
    wstr[wsize] = 0;
    GlobalUnlock(mem);
    if (!SetClipboardData(CF_UNICODETEXT, mem))
        GlobalFree(mem);
    CloseClipboard();
}
