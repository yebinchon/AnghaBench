#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {scalar_t__ selection_end; scalar_t__ composition_start; scalar_t__ selection_start; scalar_t__ composition_len; } ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__* LPSTR ;
typedef  int LPARAM ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HIMC ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int GCS_COMPATTR ; 
 int GCS_COMPSTR ; 
 int FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

__attribute__((used)) static void FUNC6(HIMC hIMC, LPARAM CompFlag, EDITSTATE *es)
{
    LONG buflen;
    LPWSTR lpCompStr;
    LPSTR lpCompStrAttr = NULL;
    DWORD dwBufLenAttr;

    buflen = FUNC2(hIMC, GCS_COMPSTR, NULL, 0);

    if (buflen < 0)
    {
        return;
    }

    lpCompStr = FUNC4(buflen);
    if (!lpCompStr)
    {
        FUNC1("Unable to allocate IME CompositionString\n");
        return;
    }

    if (buflen)
        FUNC2(hIMC, GCS_COMPSTR, lpCompStr, buflen);

    if (CompFlag & GCS_COMPATTR)
    {
        /*
         * We do not use the attributes yet. it would tell us what characters
         * are in transition and which are converted or decided upon
         */
        dwBufLenAttr = FUNC2(hIMC, GCS_COMPATTR, NULL, 0);
        if (dwBufLenAttr)
        {
            dwBufLenAttr ++;
            lpCompStrAttr = FUNC4(dwBufLenAttr + 1);
            if (!lpCompStrAttr)
            {
                FUNC1("Unable to allocate IME Attribute String\n");
                FUNC5(lpCompStr);
                return;
            }
            FUNC2(hIMC,GCS_COMPATTR, lpCompStrAttr,
                    dwBufLenAttr);
            lpCompStrAttr[dwBufLenAttr] = 0;
        }
    }

    /* check for change in composition start */
    if (es->selection_end < es->composition_start)
        es->composition_start = es->selection_end;

    /* replace existing selection string */
    es->selection_start = es->composition_start;

    if (es->composition_len > 0)
        es->selection_end = es->composition_start + es->composition_len;
    else
        es->selection_end = es->selection_start;

    FUNC0(es, FALSE, lpCompStr, buflen / sizeof(WCHAR), TRUE, TRUE);
    es->composition_len = FUNC3(es->composition_start - es->selection_end);

    es->selection_start = es->composition_start;
    es->selection_end = es->selection_start + es->composition_len;

    FUNC5(lpCompStrAttr);
    FUNC5(lpCompStr);
}