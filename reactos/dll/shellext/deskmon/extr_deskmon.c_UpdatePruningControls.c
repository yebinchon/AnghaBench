
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ bPruningOn; scalar_t__ bModesPruned; int hwndDlg; int bKeyIsReadOnly; } ;
typedef TYPE_1__* PDESKMONITOR ;


 int BST_CHECKED ;
 int BST_UNCHECKED ;
 int CheckDlgButton (int ,int ,int ) ;
 int EnableWindow (int ,int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_PRUNINGCHECK ;

__attribute__((used)) static VOID
UpdatePruningControls(PDESKMONITOR This)
{
    EnableWindow(GetDlgItem(This->hwndDlg,
                            IDC_PRUNINGCHECK),
                 This->bModesPruned && !This->bKeyIsReadOnly);
    CheckDlgButton(This->hwndDlg,
                   IDC_PRUNINGCHECK,
                   (This->bModesPruned && This->bPruningOn) ? BST_CHECKED : BST_UNCHECKED);
}
