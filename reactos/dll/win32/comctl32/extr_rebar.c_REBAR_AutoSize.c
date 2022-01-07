
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {void* rcTarget; void* rcActual; int fChanged; } ;
struct TYPE_8__ {int hwndSelf; } ;
typedef void* RECT ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ NMRBAUTOSIZE ;
typedef int NMHDR ;
typedef scalar_t__ BOOL ;


 int EqualRect (void**,void**) ;
 int GetClientRect (int ,void**) ;
 int RBN_AUTOSIZE ;
 int REBAR_Layout (TYPE_1__*) ;
 int REBAR_Notify (int *,TYPE_1__*,int ) ;
 int REBAR_SizeToHeight (TYPE_1__*,int ) ;
 int get_rect_cy (TYPE_1__*,void**) ;

__attribute__((used)) static VOID
REBAR_AutoSize(REBAR_INFO *infoPtr, BOOL needsLayout)
{
    RECT rc, rcNew;
    NMRBAUTOSIZE autosize;

    if (needsLayout)
        REBAR_Layout(infoPtr);
    GetClientRect(infoPtr->hwndSelf, &rc);
    REBAR_SizeToHeight(infoPtr, get_rect_cy(infoPtr, &rc));
    GetClientRect(infoPtr->hwndSelf, &rcNew);

    GetClientRect(infoPtr->hwndSelf, &autosize.rcTarget);
    autosize.fChanged = EqualRect(&rc, &rcNew);
    autosize.rcTarget = rc;
    autosize.rcActual = rcNew;
    REBAR_Notify((NMHDR *)&autosize, infoPtr, RBN_AUTOSIZE);
}
