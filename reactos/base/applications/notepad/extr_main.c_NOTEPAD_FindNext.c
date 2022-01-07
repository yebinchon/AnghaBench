
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_6__ {int hFindReplaceDlg; int hInstance; int hEdit; } ;
struct TYPE_5__ {int Flags; scalar_t__ lpstrFindWhat; scalar_t__ lpstrReplaceWith; } ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef scalar_t__ LPARAM ;
typedef TYPE_1__ FINDREPLACE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int EM_GETSEL ;
 int EM_REPLACESEL ;
 int EM_SCROLLCARET ;
 int EM_SETSEL ;
 scalar_t__ FALSE ;
 int FR_DOWN ;
 int GetProcessHeap () ;
 int GetWindowText (int ,int *,int) ;
 int GetWindowTextLength (int ) ;
 TYPE_4__ Globals ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LoadString (int ,int ,int *,int ) ;
 int MB_OK ;
 int MessageBox (int ,int *,int *,int ) ;
 scalar_t__ NOTEPAD_FindTextAt (TYPE_1__*,int *,int,scalar_t__) ;
 int STRING_CANNOTFIND ;
 int STRING_NOTEPAD ;
 int SendMessage (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ TRUE ;
 int _sntprintf (int *,int ,int *,scalar_t__) ;
 scalar_t__ _tcslen (scalar_t__) ;

BOOL NOTEPAD_FindNext(FINDREPLACE *pFindReplace, BOOL bReplace, BOOL bShowAlert)
{
    int iTextLength, iTargetLength;
    size_t iAdjustment = 0;
    LPTSTR pszText = ((void*)0);
    DWORD dwPosition, dwBegin, dwEnd;
    BOOL bMatches = FALSE;
    TCHAR szResource[128], szText[128];
    BOOL bSuccess;

    iTargetLength = (int) _tcslen(pFindReplace->lpstrFindWhat);


    iTextLength = GetWindowTextLength(Globals.hEdit);
    if (iTextLength > 0)
    {
        pszText = (LPTSTR) HeapAlloc(GetProcessHeap(), 0, (iTextLength + 1) * sizeof(TCHAR));
        if (!pszText)
            return FALSE;

        GetWindowText(Globals.hEdit, pszText, iTextLength + 1);
    }

    SendMessage(Globals.hEdit, EM_GETSEL, (WPARAM) &dwBegin, (LPARAM) &dwEnd);
    if (bReplace && ((dwEnd - dwBegin) == (DWORD) iTargetLength))
    {
        if (NOTEPAD_FindTextAt(pFindReplace, pszText, iTextLength, dwBegin))
        {
            SendMessage(Globals.hEdit, EM_REPLACESEL, TRUE, (LPARAM) pFindReplace->lpstrReplaceWith);
            iAdjustment = _tcslen(pFindReplace->lpstrReplaceWith) - (dwEnd - dwBegin);
        }
    }

    if (pFindReplace->Flags & FR_DOWN)
    {

        dwPosition = dwEnd;
        while(dwPosition < (DWORD) iTextLength)
        {
            bMatches = NOTEPAD_FindTextAt(pFindReplace, pszText, iTextLength, dwPosition);
            if (bMatches)
                break;
            dwPosition++;
        }
    }
    else
    {

        dwPosition = dwBegin;
        while(dwPosition > 0)
        {
            dwPosition--;
            bMatches = NOTEPAD_FindTextAt(pFindReplace, pszText, iTextLength, dwPosition);
            if (bMatches)
                break;
        }
    }

    if (bMatches)
    {

        if (dwPosition > dwBegin)
            dwPosition += (DWORD) iAdjustment;
        SendMessage(Globals.hEdit, EM_SETSEL, dwPosition, dwPosition + iTargetLength);
        SendMessage(Globals.hEdit, EM_SCROLLCARET, 0, 0);
        bSuccess = TRUE;
    }
    else
    {

        if (bShowAlert)
        {
            LoadString(Globals.hInstance, STRING_CANNOTFIND, szResource, ARRAY_SIZE(szResource));
            _sntprintf(szText, ARRAY_SIZE(szText), szResource, pFindReplace->lpstrFindWhat);
            LoadString(Globals.hInstance, STRING_NOTEPAD, szResource, ARRAY_SIZE(szResource));
            MessageBox(Globals.hFindReplaceDlg, szText, szResource, MB_OK);
        }
        bSuccess = FALSE;
    }

    if (pszText)
        HeapFree(GetProcessHeap(), 0, pszText);
    return bSuccess;
}
