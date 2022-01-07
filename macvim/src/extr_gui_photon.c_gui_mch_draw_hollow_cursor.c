
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_9__ {scalar_t__ char_height; scalar_t__ char_width; int row; int col; } ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {TYPE_1__ ul; TYPE_2__ lr; } ;
typedef TYPE_3__ PhRect_t ;


 int DRAW_END ;
 int DRAW_START ;
 scalar_t__ FILL_X (int ) ;
 scalar_t__ FILL_Y (int ) ;
 int PgDrawRect (TYPE_3__*,int ) ;
 int PgSetStrokeColor (int ) ;
 int Pg_DRAW_STROKE ;
 TYPE_4__ gui ;

void
gui_mch_draw_hollow_cursor(guicolor_T color)
{
    PhRect_t r;



    r.ul.x = FILL_X(gui.col);
    r.ul.y = FILL_Y(gui.row);
    r.lr.x = r.ul.x + gui.char_width - 1;
    r.lr.y = r.ul.y + gui.char_height - 1;

    DRAW_START;
    PgSetStrokeColor(color);
    PgDrawRect(&r, Pg_DRAW_STROKE);
    DRAW_END;
}
