
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ row; scalar_t__ col; scalar_t__ cursor_row; scalar_t__ cursor_col; int cursor_is_valid; } ;


 int FALSE ;
 TYPE_1__ gui ;
 scalar_t__ screen_Columns ;
 scalar_t__ screen_Rows ;

__attribute__((used)) static void
gui_check_pos()
{
    if (gui.row >= screen_Rows)
 gui.row = screen_Rows - 1;
    if (gui.col >= screen_Columns)
 gui.col = screen_Columns - 1;
    if (gui.cursor_row >= screen_Rows || gui.cursor_col >= screen_Columns)
 gui.cursor_is_valid = FALSE;
}
