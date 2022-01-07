
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lnum; } ;
struct TYPE_5__ {int w_valid; scalar_t__ w_topline; TYPE_1__ w_cursor; int w_cline_folded; scalar_t__ w_cline_height; scalar_t__ w_topfill; } ;


 int VALID_CHEIGHT ;
 int check_cursor_moved (TYPE_2__*) ;
 TYPE_2__* curwin ;
 int hasFolding (scalar_t__,int *,int *) ;
 scalar_t__ plines (scalar_t__) ;
 scalar_t__ plines_nofill (scalar_t__) ;

__attribute__((used)) static void
validate_cheight()
{
    check_cursor_moved(curwin);
    if (!(curwin->w_valid & VALID_CHEIGHT))
    {






     curwin->w_cline_height = plines(curwin->w_cursor.lnum);



 curwin->w_valid |= VALID_CHEIGHT;
    }
}
