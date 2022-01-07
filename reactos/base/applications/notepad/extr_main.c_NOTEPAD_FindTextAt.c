
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; int lpstrFindWhat; } ;
typedef int * LPCTSTR ;
typedef TYPE_1__ FINDREPLACE ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FR_MATCHCASE ;
 int FR_WHOLEWORD ;
 int _istspace (int ) ;
 size_t _tcslen (int ) ;
 int _tcsncmp (int *,int ,size_t) ;
 int _tcsnicmp (int *,int ,size_t) ;

__attribute__((used)) static BOOL
NOTEPAD_FindTextAt(FINDREPLACE *pFindReplace, LPCTSTR pszText, int iTextLength, DWORD dwPosition)
{
    BOOL bMatches;
    size_t iTargetLength;

    if ((!pFindReplace) || (!pszText))
    {
        return FALSE;
    }

    iTargetLength = _tcslen(pFindReplace->lpstrFindWhat);


    if (pFindReplace->Flags & FR_MATCHCASE)
        bMatches = !_tcsncmp(&pszText[dwPosition], pFindReplace->lpstrFindWhat, iTargetLength);
    else
        bMatches = !_tcsnicmp(&pszText[dwPosition], pFindReplace->lpstrFindWhat, iTargetLength);

    if (bMatches && pFindReplace->Flags & FR_WHOLEWORD)
    {
        if ((dwPosition > 0) && !_istspace(pszText[dwPosition-1]))
            bMatches = FALSE;
        if ((dwPosition < (DWORD) iTextLength - 1) && !_istspace(pszText[dwPosition+1]))
            bMatches = FALSE;
    }

    return bMatches;
}
