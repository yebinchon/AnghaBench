
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_cols; int num_rows; } ;


 int Columns ;
 int OK ;
 int Rows ;
 TYPE_1__ gui ;

int
gui_get_shellsize()
{
    Rows = gui.num_rows;
    Columns = gui.num_cols;
    return OK;
}
