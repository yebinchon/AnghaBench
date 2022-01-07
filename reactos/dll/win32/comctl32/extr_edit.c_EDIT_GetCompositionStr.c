
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ selection_end; scalar_t__ composition_start; scalar_t__ selection_start; scalar_t__ composition_len; } ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__* LPSTR ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HIMC ;
typedef TYPE_1__ EDITSTATE ;
typedef int DWORD ;


 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,scalar_t__*,int,int ,int ) ;
 int ERR (char*) ;
 int FALSE ;
 int GCS_COMPATTR ;
 int GCS_COMPSTR ;
 int ImmGetCompositionStringW (int ,int,scalar_t__*,int) ;
 int TRUE ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__* heap_alloc (int) ;
 int heap_free (scalar_t__*) ;

__attribute__((used)) static void EDIT_GetCompositionStr(HIMC hIMC, LPARAM CompFlag, EDITSTATE *es)
{
    LONG buflen;
    LPWSTR lpCompStr;
    LPSTR lpCompStrAttr = ((void*)0);
    DWORD dwBufLenAttr;

    buflen = ImmGetCompositionStringW(hIMC, GCS_COMPSTR, ((void*)0), 0);

    if (buflen < 0)
    {
        return;
    }

    lpCompStr = heap_alloc(buflen);
    if (!lpCompStr)
    {
        ERR("Unable to allocate IME CompositionString\n");
        return;
    }

    if (buflen)
        ImmGetCompositionStringW(hIMC, GCS_COMPSTR, lpCompStr, buflen);

    if (CompFlag & GCS_COMPATTR)
    {




        dwBufLenAttr = ImmGetCompositionStringW(hIMC, GCS_COMPATTR, ((void*)0), 0);
        if (dwBufLenAttr)
        {
            dwBufLenAttr ++;
            lpCompStrAttr = heap_alloc(dwBufLenAttr + 1);
            if (!lpCompStrAttr)
            {
                ERR("Unable to allocate IME Attribute String\n");
                heap_free(lpCompStr);
                return;
            }
            ImmGetCompositionStringW(hIMC,GCS_COMPATTR, lpCompStrAttr,
                    dwBufLenAttr);
            lpCompStrAttr[dwBufLenAttr] = 0;
        }
    }


    if (es->selection_end < es->composition_start)
        es->composition_start = es->selection_end;


    es->selection_start = es->composition_start;

    if (es->composition_len > 0)
        es->selection_end = es->composition_start + es->composition_len;
    else
        es->selection_end = es->selection_start;

    EDIT_EM_ReplaceSel(es, FALSE, lpCompStr, buflen / sizeof(WCHAR), TRUE, TRUE);
    es->composition_len = abs(es->composition_start - es->selection_end);

    es->selection_start = es->composition_start;
    es->selection_end = es->selection_start + es->composition_len;

    heap_free(lpCompStrAttr);
    heap_free(lpCompStr);
}
