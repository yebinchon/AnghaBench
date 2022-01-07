
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_3__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,int ,int ,int ) ;
 int hwndMDIClient ;

__attribute__((used)) static VOID
FrameOnSize(HWND hMainWnd,
            WORD cx,
            WORD cy)
{
    RECT rcClient;
    GetClientRect(hMainWnd, &rcClient);

    SetWindowPos(hwndMDIClient,
                 ((void*)0),
                 0,
                 0,
                 rcClient.right,
                 rcClient.bottom,
                 SWP_NOZORDER);
}
