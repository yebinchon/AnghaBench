
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* io; } ;
struct TYPE_13__ {int swstep; TYPE_3__ iob; } ;
struct TYPE_12__ {int desc; } ;
struct TYPE_11__ {TYPE_5__* data; TYPE_1__* plugin; } ;
struct TYPE_9__ {TYPE_4__* desc; } ;
struct TYPE_8__ {scalar_t__ name; } ;
typedef TYPE_4__ RIODesc ;
typedef TYPE_5__ RIOBochs ;
typedef TYPE_6__ RDebug ;


 int bBreak ;
 int bCapturaRegs ;
 int bStep ;
 int * desc ;
 int eprintf (char*) ;
 int malloc (int) ;
 int saveRegs ;
 int strcmp (char*,scalar_t__) ;

__attribute__((used)) static int r_debug_bochs_attach(RDebug *dbg, int pid) {
 RIODesc *d = dbg->iob.io->desc;

 dbg->swstep = 0;
 if (d && d->plugin && d->plugin->name && d->data) {
  if (!strcmp ("bochs", d->plugin->name)) {
   RIOBochs *g = d->data;


   if (( desc = &g->desc )) {
    eprintf("bochs attach: ok\n");
    saveRegs = malloc(1024);
    bCapturaRegs = 1;
    bStep = 0;
    bBreak = 0;
   }
  }
 }
 return 1;
}
