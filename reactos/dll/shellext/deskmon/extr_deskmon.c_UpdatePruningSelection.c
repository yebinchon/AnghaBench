
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int bPruningOn; int hwndDlg; TYPE_1__* DeskExtInterface; int bKeyIsReadOnly; scalar_t__ bModesPruned; } ;
struct TYPE_5__ {int Context; int (* SetPruningMode ) (int ,int) ;} ;
typedef TYPE_2__* PDESKMONITOR ;
typedef int BOOL ;


 scalar_t__ BST_UNCHECKED ;
 int GetParent (int ) ;
 int IDC_PRUNINGCHECK ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int PropSheet_Changed (int ,int ) ;
 int UpdateRefreshFrequencyList (TYPE_2__*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static VOID
UpdatePruningSelection(PDESKMONITOR This)
{
    BOOL bPruningOn;

    if (This->DeskExtInterface != ((void*)0) && This->bModesPruned && !This->bKeyIsReadOnly)
    {
        bPruningOn = IsDlgButtonChecked(This->hwndDlg,
                                        IDC_PRUNINGCHECK) != BST_UNCHECKED;

        if (bPruningOn != This->bPruningOn)
        {

            This->bPruningOn = bPruningOn;
            This->DeskExtInterface->SetPruningMode(This->DeskExtInterface->Context,
                                                   bPruningOn);




            UpdateRefreshFrequencyList(This);

            (void)PropSheet_Changed(GetParent(This->hwndDlg),
                                    This->hwndDlg);
        }
    }
}
