
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ coladd; scalar_t__ col; int lnum; } ;
typedef TYPE_1__ pos_T ;
typedef scalar_t__ colnr_T ;
struct TYPE_10__ {TYPE_1__ w_cursor; } ;


 int FALSE ;
 scalar_t__ STRLEN (int ) ;
 int TRUE ;
 TYPE_1__ VIsual ;
 int curbuf ;
 TYPE_7__* curwin ;
 int equalpos (TYPE_1__,TYPE_1__) ;
 scalar_t__ lt (TYPE_1__,TYPE_1__) ;
 int mb_adjustpos (int ,TYPE_1__*) ;
 int ml_get (int) ;
 char* p_sel ;

__attribute__((used)) static int
unadjust_for_sel()
{
    pos_T *pp;

    if (*p_sel == 'e' && !equalpos(VIsual, curwin->w_cursor))
    {
 if (lt(VIsual, curwin->w_cursor))
     pp = &curwin->w_cursor;
 else
     pp = &VIsual;





 if (pp->col > 0)
 {
     --pp->col;



 }
 else if (pp->lnum > 1)
 {
     --pp->lnum;
     pp->col = (colnr_T)STRLEN(ml_get(pp->lnum));
     return TRUE;
 }
    }
    return FALSE;
}
