
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lnum; } ;
struct TYPE_6__ {TYPE_1__ w_cursor; } ;


 int DONE_ACTION ;
 int DONE_NOTHING ;
 int FALSE ;
 int TRUE ;
 int checkupdate (TYPE_2__*) ;
 TYPE_2__* curwin ;
 scalar_t__ hasAnyFolding (TYPE_2__*) ;
 int setManualFold (int ,int ,int ,int*) ;

void
foldOpenCursor()
{
    int done;

    checkupdate(curwin);
    if (hasAnyFolding(curwin))
 for (;;)
 {
     done = DONE_NOTHING;
     (void)setManualFold(curwin->w_cursor.lnum, TRUE, FALSE, &done);
     if (!(done & DONE_ACTION))
  break;
 }
}
