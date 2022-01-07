
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int szTemp ;
typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_7__ {int dwIdsName; int size; } ;
struct TYPE_6__ {int* ColumnOrderArray; int * ColumnSizeArray; int * Columns; } ;
struct TYPE_5__ {int mask; int cchTextMax; int cxy; int * pszText; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ HDITEM ;


 int COLUMN_NMAX ;
 TYPE_4__* ColumnPresets ;
 int FALSE ;
 int HDI_TEXT ;
 int HDI_WIDTH ;
 int HDM_GETITEM ;
 int HDM_GETITEMCOUNT ;
 int HDM_GETORDERARRAY ;
 int LoadStringW (int ,int ,int *,int) ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;
 TYPE_3__ TaskManagerSettings ;
 scalar_t__ _wcsicmp (int *,int *) ;
 int hInst ;
 int hProcessPageHeaderCtrl ;
 int memset (TYPE_1__*,int ,int) ;

void SaveColumnSettings(void)
{
    HDITEM hditem;
    int i, n;
    WCHAR text[260];
    WCHAR szTemp[256];
    LRESULT size;


    for (i=0; i<COLUMN_NMAX; i++) {
        TaskManagerSettings.ColumnOrderArray[i] = i;
        TaskManagerSettings.Columns[i] = FALSE;
        TaskManagerSettings.ColumnSizeArray[i] = ColumnPresets[i].size;
    }


    size = SendMessageW(hProcessPageHeaderCtrl, HDM_GETITEMCOUNT, 0, 0);
    SendMessageW(hProcessPageHeaderCtrl, HDM_GETORDERARRAY, (WPARAM) size, (LPARAM) &TaskManagerSettings.ColumnOrderArray);


    for (i = 0; i < SendMessageW(hProcessPageHeaderCtrl, HDM_GETITEMCOUNT, 0, 0); i++) {
        memset(&hditem, 0, sizeof(HDITEM));

        hditem.mask = HDI_TEXT|HDI_WIDTH;
        hditem.pszText = text;
        hditem.cchTextMax = 260;

        SendMessageW(hProcessPageHeaderCtrl, HDM_GETITEM, i, (LPARAM) &hditem);

        for (n = 0; n < COLUMN_NMAX; n++) {
            LoadStringW(hInst, ColumnPresets[n].dwIdsName, szTemp, sizeof(szTemp)/sizeof(WCHAR));
            if (_wcsicmp(text, szTemp) == 0)
            {
                TaskManagerSettings.Columns[n] = TRUE;
                TaskManagerSettings.ColumnSizeArray[n] = hditem.cxy;
            }
        }
    }
}
