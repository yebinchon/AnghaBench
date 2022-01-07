
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {size_t uNumTools; int hwndSelf; int hTitleFont; int hFont; int hTitleIcon; struct TYPE_8__* pszTitle; struct TYPE_8__* tools; struct TYPE_8__* lpszText; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;


 int DeleteObject (int ) ;
 int Free (TYPE_1__*) ;
 int IS_INTRESOURCE (TYPE_1__*) ;
 TYPE_1__* LPSTR_TEXTCALLBACKW ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 scalar_t__ TOOLTIPS_GetTitleIconIndex (int ) ;
 int TOOLTIPS_ResetSubclass (TYPE_1__*) ;
 scalar_t__ TTI_ERROR ;

__attribute__((used)) static LRESULT
TOOLTIPS_Destroy (TOOLTIPS_INFO *infoPtr)
{
    TTTOOL_INFO *toolPtr;
    UINT i;


    if (infoPtr->tools) {
 for (i = 0; i < infoPtr->uNumTools; i++) {
     toolPtr = &infoPtr->tools[i];
     if (toolPtr->lpszText) {
  if ( (toolPtr->lpszText != LPSTR_TEXTCALLBACKW) &&
       !IS_INTRESOURCE(toolPtr->lpszText) )
  {
      Free (toolPtr->lpszText);
      toolPtr->lpszText = ((void*)0);
  }
     }

            TOOLTIPS_ResetSubclass (toolPtr);
        }

 Free (infoPtr->tools);
    }


    Free (infoPtr->pszTitle);

    if (TOOLTIPS_GetTitleIconIndex(infoPtr->hTitleIcon) > TTI_ERROR)
        DeleteObject(infoPtr->hTitleIcon);


    DeleteObject (infoPtr->hFont);
    DeleteObject (infoPtr->hTitleFont);


    SetWindowLongPtrW(infoPtr->hwndSelf, 0, 0);
    Free (infoPtr);

    return 0;
}
