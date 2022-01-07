
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fnum; int mark; } ;
struct TYPE_7__ {int * fname; TYPE_1__ fmark; } ;
typedef TYPE_2__ xfmark_T ;
struct TYPE_10__ {scalar_t__ keepjumps; } ;
struct TYPE_9__ {int b_fnum; } ;
struct TYPE_8__ {int w_jumplistidx; int w_jumplistlen; int w_pcmark; TYPE_2__* w_jumplist; int w_cursor; int w_prev_pcmark; } ;


 int JUMPLISTSIZE ;
 TYPE_5__ cmdmod ;
 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 scalar_t__ global_busy ;
 scalar_t__ listcmd_busy ;
 int vim_free (int *) ;

void
setpcmark()
{
    if (global_busy || listcmd_busy || cmdmod.keepjumps)
 return;

    curwin->w_prev_pcmark = curwin->w_pcmark;
    curwin->w_pcmark = curwin->w_cursor;
}
