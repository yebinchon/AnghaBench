
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_valid; } ;


 int TRUE ;
 int VALID_WCOL ;
 int VALID_WROW ;
 int check_cursor_moved (TYPE_1__*) ;
 int curs_columns (int ) ;
 TYPE_1__* curwin ;

void
validate_cursor()
{
    check_cursor_moved(curwin);
    if ((curwin->w_valid & (VALID_WCOL|VALID_WROW)) != (VALID_WCOL|VALID_WROW))
 curs_columns(TRUE);
}
