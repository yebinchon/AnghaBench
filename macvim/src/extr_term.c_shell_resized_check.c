
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int starting; } ;


 int Columns ;
 int Rows ;
 int check_shellsize () ;
 int exiting ;
 TYPE_1__ gui ;
 int shell_resized () ;
 int ui_get_shellsize () ;

void
shell_resized_check()
{
    int old_Rows = Rows;
    int old_Columns = Columns;

    if (!exiting





     )
    {
 (void)ui_get_shellsize();
 check_shellsize();
 if (old_Rows != Rows || old_Columns != Columns)
     shell_resized();
    }
}
