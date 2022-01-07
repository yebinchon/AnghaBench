
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int button ;
struct TYPE_3__ {int iBitmap; int iString; scalar_t__ dwData; int fsStyle; scalar_t__ fsState; scalar_t__ idCommand; } ;
typedef TYPE_1__ TBBUTTON ;
typedef int LPARAM ;
typedef int HWND ;


 int BTNS_SEP ;
 int SendMessageW (int ,int ,int,int ) ;
 int TB_ADDBUTTONSW ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static void AddSeparator(HWND hwndToolBar)
{
    TBBUTTON button;

    ZeroMemory(&button, sizeof(button));
    button.iBitmap = -1;
    button.idCommand = 0;
    button.fsState = 0;
    button.fsStyle = BTNS_SEP;
    button.dwData = 0;
    button.iString = -1;
    SendMessageW(hwndToolBar, TB_ADDBUTTONSW, 1, (LPARAM)&button);
}
