
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ colnr_T ;
struct TYPE_5__ {scalar_t__ col; scalar_t__ coladd; } ;
struct TYPE_4__ {TYPE_2__ w_cursor; } ;


 int INSERT ;
 scalar_t__ NUL ;
 int State ;
 int VE_ALL ;
 int VE_ONEMORE ;
 TYPE_1__* curwin ;
 int dec_cursor () ;
 scalar_t__ gchar_cursor () ;
 int getvcol (TYPE_1__*,TYPE_2__*,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ restart_edit ;
 int ve_flags ;

void
adjust_cursor_eol()
{
    if (curwin->w_cursor.col > 0
     && gchar_cursor() == NUL



     && !(restart_edit || (State & INSERT)))
    {

 dec_cursor();
    }
}
