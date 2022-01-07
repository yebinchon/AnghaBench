
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int saveas ;
struct TYPE_11__ {int lStructSize; char* lpstrFilter; int nMaxFile; int Flags; char* lpstrDefExt; int * lpstrFile; int hInstance; int hwndOwner; } ;
struct TYPE_10__ {int hwnd; struct TYPE_10__* pFileName; } ;
typedef int TCHAR ;
typedef TYPE_1__* PCONSOLE_CHILDFRM_WND ;
typedef TYPE_2__ OPENFILENAME ;
typedef int HWND ;
typedef int BOOL ;


 int DPRINT1 (char*,TYPE_1__*) ;
 scalar_t__ DoSaveFile (int ,TYPE_1__*) ;
 int FALSE ;
 scalar_t__ GetSaveFileName (TYPE_2__*) ;
 int GetWindowText (int ,int *,int) ;
 int MAX_PATH ;
 int OFN_HIDEREADONLY ;
 int OFN_OVERWRITEPROMPT ;
 int OFN_PATHMUSTEXIST ;
 int SetFileName (TYPE_1__*,int *) ;
 int TEXT (char*) ;
 int TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;
 int _tcscat (int *,int ) ;
 int _tcscpy (int *,TYPE_1__*) ;
 int hAppInstance ;

__attribute__((used)) static BOOL
DoSaveFileAs(
    HWND hWnd,
    PCONSOLE_CHILDFRM_WND pChildInfo)
{
    OPENFILENAME saveas;
    TCHAR szPath[MAX_PATH];

    DPRINT1("pChildInfo %p\n", pChildInfo);
    DPRINT1("FileName %S\n", pChildInfo->pFileName);

    ZeroMemory(&saveas, sizeof(saveas));

    if (pChildInfo->pFileName != ((void*)0))
    {
        _tcscpy(szPath, pChildInfo->pFileName);
    }
    else
    {
        GetWindowText(pChildInfo->hwnd, szPath, MAX_PATH);
        _tcscat(szPath, TEXT(".msc"));
    }

    saveas.lStructSize = sizeof(OPENFILENAME);
    saveas.hwndOwner = hWnd;
    saveas.hInstance = hAppInstance;
    saveas.lpstrFilter = L"MSC Files\0*.msc\0";
    saveas.lpstrFile = szPath;
    saveas.nMaxFile = MAX_PATH;
    saveas.Flags = OFN_HIDEREADONLY | OFN_PATHMUSTEXIST | OFN_OVERWRITEPROMPT;
    saveas.lpstrDefExt = L"msc";

    if (GetSaveFileName(&saveas))
    {



        SetFileName(pChildInfo, szPath);

        if (DoSaveFile(hWnd, pChildInfo))
        {

            return TRUE;
        }
        else
        {
            SetFileName(pChildInfo, ((void*)0));
            return FALSE;
        }
    }
    else
    {
        return FALSE;
    }
}
