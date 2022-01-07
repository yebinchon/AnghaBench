
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;


 int PgSetTranslation (TYPE_1__*,int ) ;
 int Pg_RELATIVE ;
 TYPE_1__ gui_ph_raw_offset ;

__attribute__((used)) static void
gui_ph_draw_end(void)
{
    gui_ph_raw_offset.x = -gui_ph_raw_offset.x;
    gui_ph_raw_offset.y = -gui_ph_raw_offset.y;
    PgSetTranslation(&gui_ph_raw_offset, Pg_RELATIVE);
}
