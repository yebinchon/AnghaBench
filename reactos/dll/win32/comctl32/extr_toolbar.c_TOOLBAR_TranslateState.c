
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int fsState; scalar_t__ bHot; } ;
typedef TYPE_1__ TBUTTON_INFO ;


 int CDIS_CHECKED ;
 int CDIS_DISABLED ;
 int CDIS_HOT ;
 int CDIS_INDETERMINATE ;
 int CDIS_MARKED ;
 int CDIS_SELECTED ;
 int TBSTATE_CHECKED ;
 int TBSTATE_ENABLED ;
 int TBSTATE_INDETERMINATE ;
 int TBSTATE_MARKED ;
 int TBSTATE_PRESSED ;

__attribute__((used)) static UINT
TOOLBAR_TranslateState(const TBUTTON_INFO *btnPtr)
{
    UINT retstate = 0;

    retstate |= (btnPtr->fsState & TBSTATE_CHECKED) ? CDIS_CHECKED : 0;
    retstate |= (btnPtr->fsState & TBSTATE_PRESSED) ? CDIS_SELECTED : 0;
    retstate |= (btnPtr->fsState & TBSTATE_ENABLED) ? 0 : CDIS_DISABLED;
    retstate |= (btnPtr->fsState & TBSTATE_MARKED ) ? CDIS_MARKED : 0;
    retstate |= (btnPtr->bHot ) ? CDIS_HOT : 0;
    retstate |= ((btnPtr->fsState & (TBSTATE_ENABLED|TBSTATE_INDETERMINATE)) == (TBSTATE_ENABLED|TBSTATE_INDETERMINATE)) ? CDIS_INDETERMINATE : 0;

    return retstate;
}
