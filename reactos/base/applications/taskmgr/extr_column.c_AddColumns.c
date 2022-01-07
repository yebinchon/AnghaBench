
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int szTemp ;
typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_4__ {int dwIdsName; } ;
struct TYPE_3__ {int ColumnOrderArray; int * ColumnSizeArray; scalar_t__* Columns; } ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;


 unsigned int COLUMN_NMAX ;
 TYPE_2__* ColumnPresets ;
 int HDM_GETITEMCOUNT ;
 int HDM_SETORDERARRAY ;
 int InsertColumn (unsigned int,int *,int ,int ,int) ;
 int LVCFMT_LEFT ;
 int LoadStringW (int ,int ,int *,int) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 TYPE_1__ TaskManagerSettings ;
 int UpdateColumnDataHints () ;
 int hInst ;
 int hProcessPageHeaderCtrl ;

void AddColumns(void)
{
    LRESULT size;
    WCHAR szTemp[256];
    unsigned int n;

    for (n=0; n<COLUMN_NMAX; n++) {
        if (TaskManagerSettings.Columns[n]) {
            LoadStringW(hInst, ColumnPresets[n].dwIdsName, szTemp, sizeof(szTemp)/sizeof(WCHAR));
            InsertColumn(n, szTemp, LVCFMT_LEFT, TaskManagerSettings.ColumnSizeArray[n], -1);
        }
    }

    size = SendMessageW(hProcessPageHeaderCtrl, HDM_GETITEMCOUNT, 0, 0);
    SendMessageW(hProcessPageHeaderCtrl, HDM_SETORDERARRAY, (WPARAM) size, (LPARAM) &TaskManagerSettings.ColumnOrderArray);

    UpdateColumnDataHints();
}
