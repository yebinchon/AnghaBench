
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_2__ {int hMainWnd; int hInstance; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HICON ;


 int ARRAYSIZE (int *) ;
 int CLIPBRD_ICON ;







 int DeleteClipboardContent () ;
 int DeleteObject (int ) ;
 TYPE_1__ Globals ;
 int HtmlHelpW (int ,char*,int ,int ) ;
 int IDYES ;
 int LOWORD (int ) ;
 int LoadClipboardFromFile () ;
 int LoadIconW (int ,int ) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int MAX_STRING_LEN ;
 int MB_ICONWARNING ;
 int MB_YESNO ;
 int MessageBoxRes (int ,int ,int ,int ,int) ;
 int PostMessageW (int ,int ,int ,int ) ;
 int STRING_CLIPBOARD ;
 int STRING_DELETE_MSG ;
 int STRING_DELETE_TITLE ;
 int SaveClipboardToFile () ;
 int SetDisplayFormat (int ) ;
 int ShellAboutW (int ,int *,int *,int ) ;
 int WM_CLOSE ;

__attribute__((used)) static int OnCommand(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    switch (LOWORD(wParam))
    {
        case 129:
        {
            LoadClipboardFromFile();
            break;
        }

        case 128:
        {
            SaveClipboardToFile();
            break;
        }

        case 131:
        {
            PostMessageW(Globals.hMainWnd, WM_CLOSE, 0, 0);
            break;
        }

        case 132:
        {
            if (MessageBoxRes(Globals.hMainWnd, Globals.hInstance,
                              STRING_DELETE_MSG, STRING_DELETE_TITLE,
                              MB_ICONWARNING | MB_YESNO) != IDYES)
            {
                break;
            }

            DeleteClipboardContent();
            break;
        }

        case 133:
        {
            SetDisplayFormat(0);
            break;
        }

        case 130:
        {
            HtmlHelpW(Globals.hMainWnd, L"clipbrd.chm", 0, 0);
            break;
        }

        case 134:
        {
            HICON hIcon;
            WCHAR szTitle[MAX_STRING_LEN];

            hIcon = LoadIconW(Globals.hInstance, MAKEINTRESOURCE(CLIPBRD_ICON));
            LoadStringW(Globals.hInstance, STRING_CLIPBOARD, szTitle, ARRAYSIZE(szTitle));
            ShellAboutW(Globals.hMainWnd, szTitle, ((void*)0), hIcon);
            DeleteObject(hIcon);
            break;
        }

        default:
        {
            break;
        }
    }
    return 0;
}
