
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int scroll_region_bot; int char_height; scalar_t__ scroll_region_right; scalar_t__ scroll_region_left; int vimTextArea; } ;
struct TYPE_12__ {int y; scalar_t__ x; } ;
struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_9__ {void* y; void* x; } ;
struct TYPE_11__ {TYPE_2__ lr; TYPE_1__ ul; } ;
typedef TYPE_3__ PhRect_t ;
typedef TYPE_4__ PhPoint_t ;


 void* FILL_X (scalar_t__) ;
 void* FILL_Y (int) ;
 int PgFlush () ;
 int PhBlit (int ,TYPE_3__*,TYPE_4__*) ;
 int PhTranslatePoint (int *,int ) ;
 int PhTranslateRect (TYPE_3__*,int *) ;
 int PtFindDisjoint (int ) ;
 int PtWidgetOffset (int ,int *) ;
 int PtWidgetPos (int ,int *) ;
 int PtWidgetRid (int ) ;
 TYPE_5__ gui ;
 int gui_clear_block (int,scalar_t__,int,scalar_t__) ;
 int gui_ph_raw_offset ;

void
gui_mch_insert_lines(int row, int num_lines)
{
    PhRect_t rect;
    PhPoint_t delta;

    rect.ul.x = FILL_X(gui.scroll_region_left);
    rect.ul.y = FILL_Y(row);

    rect.lr.x = FILL_X(gui.scroll_region_right + 1) - 1;
    rect.lr.y = FILL_Y(gui.scroll_region_bot - num_lines + 1) - 1;

    PtWidgetOffset(gui.vimTextArea, &gui_ph_raw_offset);
    PhTranslatePoint(&gui_ph_raw_offset, PtWidgetPos(gui.vimTextArea, ((void*)0)));
    PhTranslateRect(&rect, &gui_ph_raw_offset);

    delta.x = 0;
    delta.y = num_lines * gui.char_height;

    PgFlush();

    PhBlit(PtWidgetRid(PtFindDisjoint(gui.vimTextArea)) , &rect, &delta);

    gui_clear_block(row, gui.scroll_region_left,
     row + num_lines - 1, gui.scroll_region_right);
}
