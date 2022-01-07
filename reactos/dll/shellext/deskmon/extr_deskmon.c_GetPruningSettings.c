
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int bModesPruned; int bKeyIsReadOnly; int bPruningOn; TYPE_1__* DeskExtInterface; } ;
struct TYPE_5__ {int Context; int (* GetPruningMode ) (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;
typedef TYPE_2__* PDESKMONITOR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int UpdatePruningControls (TYPE_2__*) ;
 int stub1 (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static VOID
GetPruningSettings(PDESKMONITOR This)
{
    BOOL bModesPruned = FALSE, bKeyIsReadOnly = FALSE, bPruningOn = FALSE;

    if (This->DeskExtInterface != ((void*)0))
    {
        This->DeskExtInterface->GetPruningMode(This->DeskExtInterface->Context,
                                               &bModesPruned,
                                               &bKeyIsReadOnly,
                                               &bPruningOn);
    }


    This->bModesPruned = (bModesPruned != FALSE);
    This->bKeyIsReadOnly = (bKeyIsReadOnly != FALSE);
    This->bPruningOn = (bPruningOn != FALSE);

    UpdatePruningControls(This);
}
