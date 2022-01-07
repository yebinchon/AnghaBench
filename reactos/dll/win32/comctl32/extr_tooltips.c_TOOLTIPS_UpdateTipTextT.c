
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int nCurrentTool; scalar_t__ bTrackActive; scalar_t__ bActive; TYPE_1__* tools; } ;
struct TYPE_10__ {scalar_t__ cbSize; int * lpszText; int hinst; } ;
struct TYPE_9__ {int * lpszText; int hinst; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TTTOOLINFOW ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 void* Alloc (int) ;
 int CP_ACP ;
 int FALSE ;
 int Free (int *) ;
 scalar_t__ IS_INTRESOURCE (int *) ;
 int * LPSTR_TEXTCALLBACKW ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int TOOLTIPS_GetToolFromInfoT (TYPE_3__*,TYPE_2__ const*) ;
 scalar_t__ TOOLTIPS_IsCallbackString (int *,scalar_t__) ;
 int TOOLTIPS_Show (TYPE_3__*,int ) ;
 int TRACE (char*,int) ;
 int TRUE ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;
 int lstrlenW (int *) ;
 int strcpyW (int *,int *) ;

__attribute__((used)) static LRESULT
TOOLTIPS_UpdateTipTextT (TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *ti, BOOL isW)
{
    TTTOOL_INFO *toolPtr;
    INT nTool;

    if (!ti) return 0;
    if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
 return FALSE;

    nTool = TOOLTIPS_GetToolFromInfoT (infoPtr, ti);
    if (nTool == -1)
 return 0;

    TRACE("tool %d\n", nTool);

    toolPtr = &infoPtr->tools[nTool];


    toolPtr->hinst = ti->hinst;

    if (IS_INTRESOURCE(ti->lpszText)){
 toolPtr->lpszText = ti->lpszText;
    }
    else if (ti->lpszText) {
 if (TOOLTIPS_IsCallbackString(ti->lpszText, isW))
     toolPtr->lpszText = LPSTR_TEXTCALLBACKW;
 else {
     if ( (toolPtr->lpszText) &&
   !IS_INTRESOURCE(toolPtr->lpszText) ) {
  if( toolPtr->lpszText != LPSTR_TEXTCALLBACKW)
                    Free (toolPtr->lpszText);
  toolPtr->lpszText = ((void*)0);
     }
     if (ti->lpszText) {
  if (isW) {
      INT len = lstrlenW (ti->lpszText);
      toolPtr->lpszText = Alloc ((len+1)*sizeof(WCHAR));
      strcpyW (toolPtr->lpszText, ti->lpszText);
  }
  else {
      INT len = MultiByteToWideChar(CP_ACP, 0, (LPSTR)ti->lpszText,
      -1, ((void*)0), 0);
      toolPtr->lpszText = Alloc (len * sizeof(WCHAR));
      MultiByteToWideChar(CP_ACP, 0, (LPSTR)ti->lpszText, -1,
     toolPtr->lpszText, len);
         }
     }
 }
    }

    if(infoPtr->nCurrentTool == -1) return 0;

    if (infoPtr->bActive)
 TOOLTIPS_Show (infoPtr, FALSE);
    else if (infoPtr->bTrackActive)
 TOOLTIPS_Show (infoPtr, TRUE);

    return 0;
}
