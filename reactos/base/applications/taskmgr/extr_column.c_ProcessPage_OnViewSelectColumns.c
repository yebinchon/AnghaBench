
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int* ColumnOrderArray; int * ColumnSizeArray; } ;


 int AddColumns () ;
 int COLUMN_NMAX ;
 TYPE_2__* ColumnPresets ;
 int ColumnsDialogWndProc ;
 scalar_t__ DialogBoxW (int ,int ,int ,int ) ;
 int Header_GetItemCount (int ) ;
 int IDD_COLUMNS_DIALOG ;
 scalar_t__ IDOK ;
 int ListView_DeleteColumn (int ,int) ;
 int MAKEINTRESOURCEW (int ) ;
 TYPE_1__ TaskManagerSettings ;
 int hInst ;
 int hMainWnd ;
 int hProcessPageHeaderCtrl ;
 int hProcessPageListCtrl ;

void ProcessPage_OnViewSelectColumns(void)
{
    int i;

    if (DialogBoxW(hInst, MAKEINTRESOURCEW(IDD_COLUMNS_DIALOG), hMainWnd, ColumnsDialogWndProc) == IDOK)
    {
        for (i=Header_GetItemCount(hProcessPageHeaderCtrl)-1; i>=0; i--)
        {
            (void)ListView_DeleteColumn(hProcessPageListCtrl, i);
        }

        for (i=0; i<COLUMN_NMAX; i++) {
            TaskManagerSettings.ColumnOrderArray[i] = i;
            TaskManagerSettings.ColumnSizeArray[i] = ColumnPresets[i].size;
        }

        AddColumns();
    }
}
