
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int button ;
struct TYPE_3__ {int iBitmap; int idCommand; int iString; scalar_t__ dwData; int fsStyle; int fsState; } ;
typedef TYPE_1__ TBBUTTON ;
typedef int LPARAM ;
typedef int HWND ;


 int BTNS_BUTTON ;
 int SendMessageW (int ,int ,int,int ) ;
 int TBSTATE_ENABLED ;
 int TB_ADDBUTTONSW ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static void AddButton(HWND hwndToolBar, int nImage, int nCommand)
{
    TBBUTTON button;

    ZeroMemory(&button, sizeof(button));
    button.iBitmap = nImage;
    button.idCommand = nCommand;
    button.fsState = TBSTATE_ENABLED;
    button.fsStyle = BTNS_BUTTON;
    button.dwData = 0;
    button.iString = -1;
    SendMessageW(hwndToolBar, TB_ADDBUTTONSW, 1, (LPARAM)&button);
}
