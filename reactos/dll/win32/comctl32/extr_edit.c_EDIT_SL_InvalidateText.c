
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format_rect; } ;
typedef int RECT ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_GetLineRect (TYPE_1__*,int ,int ,int ,int *) ;
 int EDIT_UpdateText (TYPE_1__*,int *,int ) ;
 scalar_t__ IntersectRect (int *,int *,int *) ;
 int TRUE ;

__attribute__((used)) static void EDIT_SL_InvalidateText(EDITSTATE *es, INT start, INT end)
{
 RECT line_rect;
 RECT rc;

 EDIT_GetLineRect(es, 0, start, end, &line_rect);
 if (IntersectRect(&rc, &line_rect, &es->format_rect))
  EDIT_UpdateText(es, &rc, TRUE);
}
