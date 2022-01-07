
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ lnum; scalar_t__ fill; scalar_t__ height; } ;
typedef TYPE_2__ lineoff_T ;
struct TYPE_6__ {scalar_t__ lnum; } ;
struct TYPE_8__ {scalar_t__ w_topline; int w_topfill; TYPE_1__ w_cursor; } ;


 int FALSE ;
 int TRUE ;
 TYPE_4__* curwin ;
 scalar_t__ hasAnyFolding (TYPE_4__*) ;
 int p_so ;
 int topline_back (TYPE_2__*) ;

__attribute__((used)) static int
check_top_offset()
{
    lineoff_T loff;
    int n;

    if (curwin->w_cursor.lnum < curwin->w_topline + p_so



     )
    {
 loff.lnum = curwin->w_cursor.lnum;




 n = 0;


 while (n < p_so)
 {
     topline_back(&loff);

     if (loff.lnum < curwin->w_topline



      )
  break;
     n += loff.height;
 }
 if (n < p_so)
     return TRUE;
    }
    return FALSE;
}
