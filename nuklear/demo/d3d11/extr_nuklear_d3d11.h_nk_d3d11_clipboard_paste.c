
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nk_text_edit {int dummy; } ;
typedef int nk_handle ;
typedef int SIZE_T ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ HGLOBAL ;


 int CF_UNICODETEXT ;
 int CP_UTF8 ;
 int CloseClipboard () ;
 scalar_t__ GetClipboardData (int ) ;
 int GlobalLock (scalar_t__) ;
 int GlobalSize (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 scalar_t__ IsClipboardFormatAvailable (int ) ;
 scalar_t__ OpenClipboard (int *) ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,char*,int,int *,int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int nk_textedit_paste (struct nk_text_edit*,char*,int) ;

__attribute__((used)) static void
nk_d3d11_clipboard_paste(nk_handle usr, struct nk_text_edit *edit)
{
    (void)usr;
    if (IsClipboardFormatAvailable(CF_UNICODETEXT) && OpenClipboard(((void*)0)))
    {
        HGLOBAL mem = GetClipboardData(CF_UNICODETEXT);
        if (mem)
        {
            SIZE_T size = GlobalSize(mem) - 1;
            if (size)
            {
                LPCWSTR wstr = (LPCWSTR)GlobalLock(mem);
                if (wstr)
                {
                    int utf8size = WideCharToMultiByte(CP_UTF8, 0, wstr, size / sizeof(wchar_t), ((void*)0), 0, ((void*)0), ((void*)0));
                    if (utf8size)
                    {
                        char* utf8 = (char*)malloc(utf8size);
                        if (utf8)
                        {
                            WideCharToMultiByte(CP_UTF8, 0, wstr, size / sizeof(wchar_t), utf8, utf8size, ((void*)0), ((void*)0));
                            nk_textedit_paste(edit, utf8, utf8size);
                            free(utf8);
                        }
                    }
                    GlobalUnlock(mem);
                }
            }
        }
        CloseClipboard();
    }
}
