
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int mask; int iSubItem; int cx; int fmt; int * pszText; } ;
typedef TYPE_1__ LVCOLUMN ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int COUNT_OF (int *) ;
 int FALSE ;
 scalar_t__ IDS_LIST_COLUMN_FIRST ;
 int LVCF_FMT ;
 int LVCF_SUBITEM ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int ListView_InsertColumn (int ,int,TYPE_1__*) ;
 int LoadStringW (int ,scalar_t__,int *,int ) ;
 int MAX_LIST_COLUMNS ;
 int TRUE ;
 int * column_alignment ;
 int* default_column_widths ;
 int hInst ;

__attribute__((used)) static BOOL CreateListColumns(HWND hWndListView, INT cxTotal)
{
    WCHAR szText[50];
    int index;
    LVCOLUMN lvC;


    lvC.mask = LVCF_FMT | LVCF_WIDTH | LVCF_TEXT | LVCF_SUBITEM;
    lvC.pszText = szText;


    for (index = 0; index < MAX_LIST_COLUMNS; index++)
    {
        lvC.iSubItem = index;
        lvC.cx = (cxTotal * default_column_widths[index]) / 100;
        lvC.fmt = column_alignment[index];
        LoadStringW(hInst, IDS_LIST_COLUMN_FIRST + index, szText, COUNT_OF(szText));
        if (ListView_InsertColumn(hWndListView, index, &lvC) == -1) return FALSE;
    }
    return TRUE;
}
