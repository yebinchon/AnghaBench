
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int scrollbar_T ;
struct TYPE_5__ {TYPE_1__* cbdata; } ;
struct TYPE_4__ {int position; int action; } ;
typedef int PtWidget_t ;
typedef TYPE_1__ PtScrollbarCallback_t ;
typedef TYPE_2__ PtCallbackInfo_t ;


 int FALSE ;
 int Pt_CONTINUE ;


 int TRUE ;
 int gui_drag_scrollbar (int *,int,int) ;

__attribute__((used)) static int
gui_ph_handle_scrollbar(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    PtScrollbarCallback_t *scroll;
    scrollbar_T *sb;
    int value, dragging = FALSE;

    scroll = info->cbdata;

    sb = (scrollbar_T *) data;
    if (sb != ((void*)0))
    {
 value = scroll->position;
 switch (scroll->action)
 {
     case 129:
  dragging = TRUE;
  break;

     case 128:

  return Pt_CONTINUE;
  break;
 }

 gui_drag_scrollbar(sb, value, dragging);
    }
    return Pt_CONTINUE;
}
