
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int szBuffer ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {int* pszText; int mask; } ;
struct TYPE_5__ {int * hParent; TYPE_1__ item; int hInsertAfter; } ;
typedef TYPE_2__ TVINSERTSTRUCT ;
typedef int HWND ;
typedef int * HTREEITEM ;
typedef int HRESULT ;
typedef int FILE ;
typedef int BOOL ;


 int BUFFER_SIZE ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_SYSTEM_TREE ;
 int StringCbCatW (int*,int,char*) ;
 int StringCbCopyW (int*,int,int*) ;
 int TRUE ;
 int TVIF_TEXT ;
 int TVI_LAST ;
 int * TreeView_InsertItem (int ,TYPE_2__*) ;
 int * _wfopen (int*,char*) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ fgetws (int*,int,int *) ;
 int wcslen (int*) ;

__attribute__((used)) static BOOL
LoadSystemIni(WCHAR * szPath, HWND hDlg)
{
    WCHAR szBuffer[BUFFER_SIZE];
    HWND hDlgCtrl;
    HTREEITEM parent = ((void*)0);
    FILE* file;
    UINT length;
    TVINSERTSTRUCT insert;
    HRESULT hr;

    hr = StringCbCopyW(szBuffer, sizeof(szBuffer), szPath);
    if (FAILED(hr))
        return FALSE;

    hr = StringCbCatW(szBuffer, sizeof(szBuffer), L"\\system.ini");
    if (FAILED(hr))
        return FALSE;

    file = _wfopen(szBuffer, L"rt");
    if (!file)
       return FALSE;

    hDlgCtrl = GetDlgItem(hDlg, IDC_SYSTEM_TREE);

    while(!feof(file))
    {
        if (fgetws(szBuffer, BUFFER_SIZE, file))
        {
            length = wcslen(szBuffer);
            if (length > 1)
            {
                szBuffer[length] = L'\0';
                szBuffer[length - 1] = L'\0';
                insert.hInsertAfter = TVI_LAST;
                insert.item.mask = TVIF_TEXT;
                insert.item.pszText = szBuffer;

                if (szBuffer[0] == L';' || szBuffer[0] == L'[')
                {

                    insert.hParent = ((void*)0);
                    parent = TreeView_InsertItem(hDlgCtrl, &insert);
                }
                else
                {

                    insert.hParent = parent;
                    TreeView_InsertItem(hDlgCtrl, &insert);
                }
            }
        }
    }

    fclose(file);

    return TRUE;
}
