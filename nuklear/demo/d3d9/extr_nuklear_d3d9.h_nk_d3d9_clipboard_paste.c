
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nk_text_edit {int dummy; } ;
typedef int nk_handle ;
typedef scalar_t__ SIZE_T ;
typedef int LPCWSTR ;
typedef int HGLOBAL ;


 int CF_UNICODETEXT ;
 int CP_UTF8 ;
 int CloseClipboard () ;
 int GetClipboardData (int ) ;
 int GlobalLock (int ) ;
 scalar_t__ GlobalSize (int ) ;
 int GlobalUnlock (int ) ;
 int IsClipboardFormatAvailable (int ) ;
 scalar_t__ OpenClipboard (int *) ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int nk_textedit_paste (struct nk_text_edit*,char*,int) ;

__attribute__((used)) static void
nk_d3d9_clipboard_paste(nk_handle usr, struct nk_text_edit *edit)
{
    (void)usr;
    if (!IsClipboardFormatAvailable(CF_UNICODETEXT) && OpenClipboard(((void*)0))) {
        return;
    }

    HGLOBAL mem = GetClipboardData(CF_UNICODETEXT);
    if (!mem) {
        CloseClipboard();
        return;
    }

    SIZE_T size = GlobalSize(mem) - 1;
    if (!size) {
        CloseClipboard();
        return;
    }

    LPCWSTR wstr = (LPCWSTR)GlobalLock(mem);
    if (!wstr) {
        CloseClipboard();
        return;
    }

    int utf8size = WideCharToMultiByte(CP_UTF8, 0, wstr, (int)size / sizeof(wchar_t), ((void*)0), 0, ((void*)0), ((void*)0));
    if (utf8size) {
        char *utf8 = (char *)malloc(utf8size);
        if (utf8) {
            WideCharToMultiByte(CP_UTF8, 0, wstr, (int)size / sizeof(wchar_t), utf8, utf8size, ((void*)0), ((void*)0));
            nk_textedit_paste(edit, utf8, utf8size);
            free(utf8);
        }
    }

    GlobalUnlock(mem);
    CloseClipboard();
}
