
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lnum; } ;
struct TYPE_4__ {TYPE_1__ w_prev_pcmark; TYPE_1__ w_pcmark; int w_cursor; } ;


 TYPE_2__* curwin ;
 scalar_t__ equalpos (TYPE_1__,int ) ;

void
checkpcmark()
{
    if (curwin->w_prev_pcmark.lnum != 0
     && (equalpos(curwin->w_pcmark, curwin->w_cursor)
  || curwin->w_pcmark.lnum == 0))
    {
 curwin->w_pcmark = curwin->w_prev_pcmark;
 curwin->w_prev_pcmark.lnum = 0;
    }
}
