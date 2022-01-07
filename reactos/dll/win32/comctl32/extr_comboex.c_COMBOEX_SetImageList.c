
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hwndCombo; int himl; } ;
typedef int HIMAGELIST ;
typedef TYPE_1__ COMBOEX_INFO ;


 int COMBOEX_AdjustEditPos (TYPE_1__*) ;
 int COMBOEX_ReSize (TYPE_1__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static HIMAGELIST COMBOEX_SetImageList (COMBOEX_INFO *infoPtr, HIMAGELIST himl)
{
    HIMAGELIST himlTemp = infoPtr->himl;

    TRACE("\n");

    infoPtr->himl = himl;

    COMBOEX_ReSize (infoPtr);
    InvalidateRect (infoPtr->hwndCombo, ((void*)0), TRUE);


    COMBOEX_AdjustEditPos (infoPtr);
    return himlTemp;
}
