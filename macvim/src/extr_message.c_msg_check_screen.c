
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Columns ;
 int FALSE ;
 scalar_t__ Rows ;
 int TRUE ;
 int full_screen ;
 scalar_t__ msg_col ;
 scalar_t__ msg_row ;
 int screen_valid (int) ;

__attribute__((used)) static int
msg_check_screen()
{
    if (!full_screen || !screen_valid(FALSE))
 return FALSE;

    if (msg_row >= Rows)
 msg_row = Rows - 1;
    if (msg_col >= Columns)
 msg_col = Columns - 1;
    return TRUE;
}
