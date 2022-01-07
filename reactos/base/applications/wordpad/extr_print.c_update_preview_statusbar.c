
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_2__ {int pages_shown; scalar_t__ page; } ;
typedef int HWND ;
typedef int HINSTANCE ;


 int GetDlgItem (int ,int ) ;
 int GetModuleHandleW (int ) ;
 int IDC_STATUSBAR ;
 int LoadStringW (int ,int ,char*,int) ;
 int MAX_STRING_LEN ;
 int STRING_PREVIEW_PAGE ;
 int STRING_PREVIEW_PAGES ;
 int SetWindowTextW (int ,char*) ;
 scalar_t__ is_last_preview_page (scalar_t__) ;
 TYPE_1__ preview ;
 int wsprintfW (char*,char const*,scalar_t__,...) ;

__attribute__((used)) static void update_preview_statusbar(HWND hMainWnd)
{
    HWND hStatusbar = GetDlgItem(hMainWnd, IDC_STATUSBAR);
    HINSTANCE hInst = GetModuleHandleW(0);
    WCHAR *p;
    WCHAR wstr[MAX_STRING_LEN];

    p = wstr;
    if (preview.pages_shown < 2 || is_last_preview_page(preview.page))
    {
        static const WCHAR fmt[] = {' ','%','d','\0'};
        p += LoadStringW(hInst, STRING_PREVIEW_PAGE, wstr, MAX_STRING_LEN);
        wsprintfW(p, fmt, preview.page);
    } else {
        static const WCHAR fmt[] = {' ','%','d','-','%','d','\0'};
        p += LoadStringW(hInst, STRING_PREVIEW_PAGES, wstr, MAX_STRING_LEN);
        wsprintfW(p, fmt, preview.page, preview.page + 1);
    }
    SetWindowTextW(hStatusbar, wstr);
}
