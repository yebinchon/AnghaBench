
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ composition_len; scalar_t__ selection_start; scalar_t__ selection_end; scalar_t__ composition_start; int flags; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HIMC ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,int *,int ,int ,int ) ;
 int EDIT_GetCompositionStr (int ,int,TYPE_1__*) ;
 int EDIT_GetResultStr (int ,TYPE_1__*) ;
 int EDIT_SetCaretPos (TYPE_1__*,scalar_t__,int) ;
 int EF_AFTER_WRAP ;
 int GCS_COMPSTR ;
 int GCS_CURSORPOS ;
 int GCS_RESULTSTR ;
 int ImmGetCompositionStringW (int ,int ,int ,int ) ;
 int ImmGetContext (int ) ;
 int ImmReleaseContext (int ,int ) ;
 int TRUE ;

__attribute__((used)) static void EDIT_ImeComposition(HWND hwnd, LPARAM CompFlag, EDITSTATE *es)
{
    HIMC hIMC;
    int cursor;

    if (es->composition_len == 0 && es->selection_start != es->selection_end)
    {
        EDIT_EM_ReplaceSel(es, TRUE, ((void*)0), 0, TRUE, TRUE);
        es->composition_start = es->selection_end;
    }

    hIMC = ImmGetContext(hwnd);
    if (!hIMC)
        return;

    if (CompFlag & GCS_RESULTSTR)
    {
        EDIT_GetResultStr(hIMC, es);
        cursor = 0;
    }
    else
    {
        if (CompFlag & GCS_COMPSTR)
            EDIT_GetCompositionStr(hIMC, CompFlag, es);
        cursor = ImmGetCompositionStringW(hIMC, GCS_CURSORPOS, 0, 0);
    }
    ImmReleaseContext(hwnd, hIMC);
    EDIT_SetCaretPos(es, es->selection_start + cursor, es->flags & EF_AFTER_WRAP);
}
