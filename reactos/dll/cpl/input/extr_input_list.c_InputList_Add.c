
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_7__ {int pszIndicator; TYPE_1__* pLocale; int * pLayout; int wFlags; struct TYPE_7__* pNext; } ;
struct TYPE_6__ {int dwId; } ;
typedef TYPE_1__ LOCALE_LIST_NODE ;
typedef int LAYOUT_LIST_NODE ;
typedef TYPE_2__ INPUT_LIST_NODE ;
typedef int BOOL ;


 int ARRAYSIZE (scalar_t__*) ;
 int FALSE ;
 scalar_t__ GetLocaleInfoW (int ,int,scalar_t__*,int ) ;
 int INPUT_LIST_NODE_FLAG_ADDED ;
 TYPE_2__* InputList_AppendNode () ;
 int LOCALE_NOUSEROVERRIDE ;
 int LOCALE_SABBREVLANGNAME ;
 int LOWORD (int ) ;
 int MAX_STR_LEN ;
 int TRUE ;
 TYPE_2__* _InputList ;
 int _wcsdup (scalar_t__*) ;
 size_t wcslen (scalar_t__*) ;

BOOL
InputList_Add(LOCALE_LIST_NODE *pLocale, LAYOUT_LIST_NODE *pLayout)
{
    WCHAR szIndicator[MAX_STR_LEN];
    INPUT_LIST_NODE *pInput;

    if (pLocale == ((void*)0) || pLayout == ((void*)0))
    {
        return FALSE;
    }

    for (pInput = _InputList; pInput != ((void*)0); pInput = pInput->pNext)
    {
        if (pInput->pLocale == pLocale && pInput->pLayout == pLayout)
        {
            return FALSE;
        }
    }

    pInput = InputList_AppendNode();

    pInput->wFlags = INPUT_LIST_NODE_FLAG_ADDED;

    pInput->pLocale = pLocale;
    pInput->pLayout = pLayout;

    if (GetLocaleInfoW(LOWORD(pInput->pLocale->dwId),
                       LOCALE_SABBREVLANGNAME | LOCALE_NOUSEROVERRIDE,
                       szIndicator,
                       ARRAYSIZE(szIndicator)))
    {
        size_t len = wcslen(szIndicator);

        if (len > 0)
        {
            szIndicator[len - 1] = 0;
            pInput->pszIndicator = _wcsdup(szIndicator);
        }
    }

    return TRUE;
}
