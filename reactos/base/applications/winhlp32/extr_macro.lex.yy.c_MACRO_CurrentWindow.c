
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINHELP_WINDOW ;
struct TYPE_4__ {int * active_win; } ;
struct TYPE_3__ {int * window; } ;


 TYPE_2__ Globals ;
 TYPE_1__* lex_data ;

WINHELP_WINDOW* MACRO_CurrentWindow(void)
{
    return lex_data ? lex_data->window : Globals.active_win;
}
