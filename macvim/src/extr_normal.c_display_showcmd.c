
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FALSE ;
 scalar_t__ Rows ;
 scalar_t__ STRLEN (int *) ;
 int TRUE ;
 int cursor_off () ;
 scalar_t__ sc_col ;
 int screen_puts (int *,int,scalar_t__,int ) ;
 int setcursor () ;
 int * showcmd_buf ;
 int showcmd_is_clear ;

__attribute__((used)) static void
display_showcmd()
{
    int len;

    cursor_off();

    len = (int)STRLEN(showcmd_buf);
    if (len == 0)
 showcmd_is_clear = TRUE;
    else
    {
 screen_puts(showcmd_buf, (int)Rows - 1, sc_col, 0);
 showcmd_is_clear = FALSE;
    }





    screen_puts((char_u *)"          " + len, (int)Rows - 1, sc_col + len, 0);

    setcursor();
}
