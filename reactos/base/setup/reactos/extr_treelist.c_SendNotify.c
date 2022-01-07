
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hWnd; } ;
typedef TYPE_1__ TreeListData ;
struct TYPE_6__ {int idFrom; int hwndFrom; } ;
typedef TYPE_2__ NMHDR ;
typedef int LRESULT ;
typedef int LPARAM ;


 int GWL_ID ;
 int GetParent (int ) ;
 int GetWindowLong (int ,int ) ;
 int SendMessage (int ,int ,int ,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static LRESULT SendNotify(TreeListData *pData, NMHDR *pNotify) {

 pNotify->hwndFrom = pData->hWnd;
 pNotify->idFrom = GetWindowLong(pNotify->hwndFrom, GWL_ID);

 return SendMessage(GetParent(pNotify->hwndFrom), WM_NOTIFY, pNotify->idFrom, (LPARAM)pNotify);
}
