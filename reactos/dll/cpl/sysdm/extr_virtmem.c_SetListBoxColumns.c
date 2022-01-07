
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {int member_2; int right; int member_3; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int LPARAM ;
typedef int HWND ;


 int LB_SETTABSTOPS ;
 int MapDialogRect (int ,TYPE_1__*) ;
 int SendMessage (int ,int ,int ,int ) ;

__attribute__((used)) static VOID
SetListBoxColumns(HWND hwndListBox)
{
    RECT rect = {0, 0, 103, 0};
    MapDialogRect(hwndListBox, &rect);

    SendMessage(hwndListBox, LB_SETTABSTOPS, (WPARAM)1, (LPARAM)&rect.right);
}
