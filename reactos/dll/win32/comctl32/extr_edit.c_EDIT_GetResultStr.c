
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ selection_end; scalar_t__ composition_start; scalar_t__ selection_start; scalar_t__ composition_len; } ;
typedef int * LPWSTR ;
typedef int LONG ;
typedef int HIMC ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,int *,int,int ,int ) ;
 int ERR (char*) ;
 int GCS_RESULTSTR ;
 int ImmGetCompositionStringW (int ,int ,int *,int) ;
 int TRUE ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;

__attribute__((used)) static void EDIT_GetResultStr(HIMC hIMC, EDITSTATE *es)
{
    LONG buflen;
    LPWSTR lpResultStr;

    buflen = ImmGetCompositionStringW(hIMC, GCS_RESULTSTR, ((void*)0), 0);
    if (buflen <= 0)
    {
        return;
    }

    lpResultStr = heap_alloc(buflen);
    if (!lpResultStr)
    {
        ERR("Unable to alloc buffer for IME string\n");
        return;
    }

    ImmGetCompositionStringW(hIMC, GCS_RESULTSTR, lpResultStr, buflen);


    if (es->selection_end < es->composition_start)
        es->composition_start = es->selection_end;

    es->selection_start = es->composition_start;
    es->selection_end = es->composition_start + es->composition_len;
    EDIT_EM_ReplaceSel(es, TRUE, lpResultStr, buflen / sizeof(WCHAR), TRUE, TRUE);
    es->composition_start = es->selection_end;
    es->composition_len = 0;

    heap_free(lpResultStr);
}
