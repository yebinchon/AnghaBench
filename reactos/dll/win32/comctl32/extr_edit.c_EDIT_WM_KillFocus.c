
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int style; int hwndSelf; scalar_t__ wheelDeltaRemainder; int selection_end; int selection_start; int flags; } ;
typedef int LRESULT ;
typedef scalar_t__ HTHEME ;
typedef TYPE_1__ EDITSTATE ;


 int DestroyCaret () ;
 int EDIT_InvalidateText (TYPE_1__*,int ,int ) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EF_FOCUSED ;
 int EN_KILLFOCUS ;
 int ES_NOHIDESEL ;
 int RDW_FRAME ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int *,int) ;

__attribute__((used)) static LRESULT EDIT_WM_KillFocus(HTHEME theme, EDITSTATE *es)
{
    UINT flags = RDW_INVALIDATE | RDW_UPDATENOW;

    es->flags &= ~EF_FOCUSED;
    DestroyCaret();
    if (!(es->style & ES_NOHIDESEL))
        EDIT_InvalidateText(es, es->selection_start, es->selection_end);
    EDIT_NOTIFY_PARENT(es, EN_KILLFOCUS);

    es->wheelDeltaRemainder = 0;

    if (theme)
        flags |= RDW_FRAME;

    RedrawWindow(es->hwndSelf, ((void*)0), ((void*)0), flags);
    return 0;
}
