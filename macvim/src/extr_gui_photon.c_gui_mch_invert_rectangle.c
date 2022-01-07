
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int char_width; int char_height; } ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {TYPE_1__ lr; TYPE_2__ ul; } ;
typedef TYPE_3__ PhRect_t ;


 int DRAW_END ;
 int DRAW_START ;
 scalar_t__ FILL_X (int) ;
 scalar_t__ FILL_Y (int) ;
 int PgDrawRect (TYPE_3__*,int ) ;
 int PgSetDrawMode (int ) ;
 int Pg_DRAW_FILL ;
 int Pg_DrawModeDSTINVERT ;
 int Pg_DrawModeSRCCOPY ;
 TYPE_4__ gui ;

void
gui_mch_invert_rectangle(int row, int col, int nr, int nc)
{
    PhRect_t rect;

    rect.ul.x = FILL_X(col);
    rect.ul.y = FILL_Y(row);


    rect.lr.x = rect.ul.x + nc * gui.char_width;
    rect.lr.y = rect.ul.y + nr * gui.char_height;
    if (nc > 0)
 rect.lr.x -= 1;
    if (nr > 0)
 rect.lr.y -= 1;

    DRAW_START;
    PgSetDrawMode(Pg_DrawModeDSTINVERT);
    PgDrawRect(&rect, Pg_DRAW_FILL);
    PgSetDrawMode(Pg_DrawModeSRCCOPY);
    DRAW_END;
}
