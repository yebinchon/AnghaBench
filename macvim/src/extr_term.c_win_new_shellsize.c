
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Columns ;
 int Rows ;
 int p_window ;
 int shell_new_columns () ;
 int shell_new_rows () ;
 int ui_new_shellsize () ;

void
win_new_shellsize()
{
    static int old_Rows = 0;
    static int old_Columns = 0;

    if (old_Rows != Rows || old_Columns != Columns)
 ui_new_shellsize();
    if (old_Rows != Rows)
    {

 if (p_window == old_Rows - 1 || old_Rows == 0)
     p_window = Rows - 1;
 old_Rows = Rows;
 shell_new_rows();
    }
    if (old_Columns != Columns)
    {
 old_Columns = Columns;



    }
}
