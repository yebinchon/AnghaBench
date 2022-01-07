
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndCombo; } ;
typedef int LRESULT ;
typedef int INT ;
typedef TYPE_1__ COMBOEX_INFO ;


 int COMBOEX_AdjustEditPos (TYPE_1__*) ;
 int MoveWindow (int ,int ,int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT COMBOEX_Size (COMBOEX_INFO *infoPtr, INT width, INT height)
{
    TRACE("(width=%d, height=%d)\n", width, height);

    MoveWindow (infoPtr->hwndCombo, 0, 0, width, height, TRUE);

    COMBOEX_AdjustEditPos (infoPtr);

    return 0;
}
