
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; int CaretPos; int nHeight; int bFocus; } ;
typedef int LRESULT ;
typedef TYPE_1__ HOTKEY_INFO ;


 int CreateCaret (int ,int *,int,int ) ;
 int GetSystemMetrics (int ) ;
 int SM_CYBORDER ;
 int SetCaretPos (int ,int ) ;
 int ShowCaret (int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
HOTKEY_SetFocus (HOTKEY_INFO *infoPtr)
{
    infoPtr->bFocus = TRUE;

    CreateCaret (infoPtr->hwndSelf, ((void*)0), 1, infoPtr->nHeight);
    SetCaretPos (infoPtr->CaretPos, GetSystemMetrics(SM_CYBORDER));
    ShowCaret (infoPtr->hwndSelf);

    return 0;
}
