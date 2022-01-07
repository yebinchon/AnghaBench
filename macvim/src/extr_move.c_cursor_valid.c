
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_valid; } ;


 int VALID_WCOL ;
 int VALID_WROW ;
 int check_cursor_moved (TYPE_1__*) ;
 TYPE_1__* curwin ;

int
cursor_valid()
{
    check_cursor_moved(curwin);
    return ((curwin->w_valid & (VALID_WROW|VALID_WCOL)) ==
            (VALID_WROW|VALID_WCOL));
}
