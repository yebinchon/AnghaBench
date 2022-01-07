
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nNumButtons; char* dwStyle; size_t himlDef; int * buttons; scalar_t__ bDoRedraw; int himlDis; int himlHot; int himlInt; int hwndSelf; int nNumStrings; int nNumBitmaps; int dwExStyle; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef size_t INT ;


 int TOOLBAR_DumpButton (TYPE_1__ const*,int *,size_t) ;
 int TRACE (char*,int ,size_t,int ,size_t,int ,int ,char*) ;
 scalar_t__ TRACE_ON (int ) ;
 int toolbar ;

__attribute__((used)) static void
TOOLBAR_DumpToolbar(const TOOLBAR_INFO *iP, INT line)
{
    if (TRACE_ON(toolbar)) {
 INT i;

 TRACE("toolbar %p at line %d, exStyle=%08x, buttons=%d, bitmaps=%d, strings=%d, style=%08x\n",
       iP->hwndSelf, line,
       iP->dwExStyle, iP->nNumButtons, iP->nNumBitmaps,
       iP->nNumStrings, iP->dwStyle);
 TRACE("toolbar %p at line %d, himlInt=%p, himlDef=%p, himlHot=%p, himlDis=%p, redrawable=%s\n",
       iP->hwndSelf, line,
       iP->himlInt, iP->himlDef, iP->himlHot, iP->himlDis,
       (iP->bDoRedraw) ? "TRUE" : "FALSE");
  for(i=0; i<iP->nNumButtons; i++) {
            TOOLBAR_DumpButton(iP, &iP->buttons[i], i);
 }
    }
}
