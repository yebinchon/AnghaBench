
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int vimTextArea; } ;
struct TYPE_17__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_14__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_16__ {TYPE_2__ ul; TYPE_1__ lr; } ;
struct TYPE_15__ {TYPE_4__ rect; struct TYPE_15__* next; } ;
typedef int PtWidget_t ;
typedef TYPE_3__ PhTile_t ;
typedef TYPE_4__ PhRect_t ;
typedef TYPE_5__ PhPoint_t ;


 int PgClearTranslation () ;
 int PgGetTranslation (TYPE_5__*) ;
 int PgSetTranslation (TYPE_5__*,int ) ;
 int PhTranslatePoint (TYPE_5__*,int ) ;
 int PtBasic ;
 int PtSuperClassDraw (int ,int *,TYPE_3__*) ;
 int PtWidgetOffset (int *,TYPE_5__*) ;
 int PtWidgetPos (int ,int *) ;
 scalar_t__ TRUE ;
 TYPE_7__ gui ;
 int gui_redraw (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ is_ignore_draw ;
 int out_flush () ;

__attribute__((used)) static void
gui_ph_handle_raw_draw(PtWidget_t *widget, PhTile_t *damage)
{
    PhRect_t *r;
    PhPoint_t offset;
    PhPoint_t translation;

    if (is_ignore_draw == TRUE)
 return;

    PtSuperClassDraw(PtBasic, widget, damage);
    PgGetTranslation(&translation);
    PgClearTranslation();
    PtWidgetOffset(widget, &offset);
    PhTranslatePoint(&offset, PtWidgetPos(gui.vimTextArea, ((void*)0)));



    if (damage->next != ((void*)0))
 damage = damage->next;

    while (damage != ((void*)0))
    {
 r = &damage->rect;
 gui_redraw(
  r->ul.x - offset.x, r->ul.y - offset.y,
  r->lr.x - r->ul.x + 1,
  r->lr.y - r->ul.y + 1);
 damage = damage->next;
    }
    PgSetTranslation(&translation, 0);
}
