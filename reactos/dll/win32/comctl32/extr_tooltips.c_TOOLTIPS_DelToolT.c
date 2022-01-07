
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int uNumTools; int nTool; int nTrackTool; int nCurrentTool; TYPE_1__* tools; } ;
struct TYPE_15__ {scalar_t__ cbSize; } ;
struct TYPE_14__ {scalar_t__ lpszText; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TTTOOLINFOW ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 TYPE_1__* Alloc (int) ;
 int Free (TYPE_1__*) ;
 int IS_INTRESOURCE (scalar_t__) ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int TOOLTIPS_GetToolFromInfoT (TYPE_3__*,TYPE_2__ const*) ;
 int TOOLTIPS_Hide (TYPE_3__*) ;
 int TOOLTIPS_ResetSubclass (TYPE_1__*) ;
 int TRACE (char*,int) ;
 scalar_t__ TTTOOLINFOW_V2_SIZE ;
 scalar_t__ TTTOOLINFOW_V3_SIZE ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static LRESULT
TOOLTIPS_DelToolT (TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *ti, BOOL isW)
{
    TTTOOL_INFO *toolPtr;
    INT nTool;

    if (!ti) return 0;
    if (isW && ti->cbSize > TTTOOLINFOW_V2_SIZE &&
               ti->cbSize != TTTOOLINFOW_V3_SIZE)
 return 0;
    if (infoPtr->uNumTools == 0)
 return 0;

    nTool = TOOLTIPS_GetToolFromInfoT (infoPtr, ti);

    TRACE("tool %d\n", nTool);

    if (nTool == -1)
        return 0;


    TOOLTIPS_Hide(infoPtr);


    toolPtr = &infoPtr->tools[nTool];
    if (toolPtr->lpszText) {
 if ( (toolPtr->lpszText != LPSTR_TEXTCALLBACKW) &&
      !IS_INTRESOURCE(toolPtr->lpszText) )
     Free (toolPtr->lpszText);
    }

    TOOLTIPS_ResetSubclass (toolPtr);


    if (infoPtr->uNumTools == 1) {
 Free (infoPtr->tools);
 infoPtr->tools = ((void*)0);
    }
    else {
 TTTOOL_INFO *oldTools = infoPtr->tools;
 infoPtr->tools =
     Alloc (sizeof(TTTOOL_INFO) * (infoPtr->uNumTools - 1));

 if (nTool > 0)
     memcpy (&infoPtr->tools[0], &oldTools[0],
      nTool * sizeof(TTTOOL_INFO));

 if (nTool < infoPtr->uNumTools - 1)
     memcpy (&infoPtr->tools[nTool], &oldTools[nTool + 1],
      (infoPtr->uNumTools - nTool - 1) * sizeof(TTTOOL_INFO));

 Free (oldTools);
    }




    if (infoPtr->nTool == nTool)

        infoPtr->nTool = -1;
    else if (infoPtr->nTool > nTool)
        infoPtr->nTool--;

    if (infoPtr->nTrackTool == nTool)

        infoPtr->nTrackTool = -1;
    else if (infoPtr->nTrackTool > nTool)
        infoPtr->nTrackTool--;

    if (infoPtr->nCurrentTool == nTool)

        infoPtr->nCurrentTool = -1;
    else if (infoPtr->nCurrentTool > nTool)
        infoPtr->nCurrentTool--;

    infoPtr->uNumTools--;

    return 0;
}
