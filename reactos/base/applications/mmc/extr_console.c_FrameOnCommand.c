
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
typedef int UINT ;
struct TYPE_3__ {int hMenuConsoleLarge; int hwnd; } ;
typedef TYPE_1__* PCONSOLE_MAINFRAME_WND ;
typedef int LPARAM ;
typedef int HWND ;


 int CreateNewMDIChild (TYPE_1__*,int ) ;
 int DefFrameProc (int ,int ,int ,int ,int ) ;
 int FrameOnSave (int ) ;
 int FrameOnSaveAs (int ) ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;




 int IDM_MDI_FIRSTCHILD ;
 int LOWORD (int ) ;
 int PostMessage (int ,int ,int ,int ) ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetMenu (int ,int ) ;
 int WM_CLOSE ;
 int WM_COMMAND ;
 int WM_MDIGETACTIVE ;
 int hwndMDIClient ;

__attribute__((used)) static VOID
FrameOnCommand(HWND hwnd,
               UINT uMsg,
               WPARAM wParam,
               LPARAM lParam)
{
    PCONSOLE_MAINFRAME_WND Info;
    HWND hChild;

    Info = (PCONSOLE_MAINFRAME_WND)GetWindowLongPtr(hwnd, 0);

    switch (LOWORD(wParam))
    {
        case 130:
            CreateNewMDIChild(Info, hwndMDIClient);
            SetMenu(Info->hwnd,
                    Info->hMenuConsoleLarge);
            break;

        case 129:
            FrameOnSave(hwnd);
            break;

        case 128:
            FrameOnSaveAs(hwnd);
            break;

        case 131:
            PostMessage(hwnd, WM_CLOSE, 0, 0);
            break;

        default:
            if (LOWORD(wParam) >= IDM_MDI_FIRSTCHILD)
            {
                DefFrameProc(hwnd, hwndMDIClient, uMsg, wParam, lParam);
            }
            else
            {
                hChild = (HWND)SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0);
                if (hChild)
                {
                    SendMessage(hChild, WM_COMMAND, wParam, lParam);
                }
            }
            break;
    }
}
