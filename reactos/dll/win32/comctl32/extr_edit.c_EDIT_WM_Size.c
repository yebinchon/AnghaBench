
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int hwndSelf; } ;
typedef int RECT ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_SetRectNP (TYPE_1__*,int *) ;
 int EDIT_UpdateText (TYPE_1__*,int *,int ) ;
 int GetClientRect (int ,int *) ;
 scalar_t__ SIZE_MAXIMIZED ;
 scalar_t__ SIZE_RESTORED ;
 int TRUE ;

__attribute__((used)) static void EDIT_WM_Size(EDITSTATE *es, UINT action)
{
 if ((action == SIZE_MAXIMIZED) || (action == SIZE_RESTORED)) {
  RECT rc;
  GetClientRect(es->hwndSelf, &rc);
  EDIT_SetRectNP(es, &rc);
  EDIT_UpdateText(es, ((void*)0), TRUE);
 }
}
