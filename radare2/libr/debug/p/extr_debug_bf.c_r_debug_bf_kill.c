
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* io; } ;
struct TYPE_12__ {TYPE_3__ iob; } ;
struct TYPE_11__ {int bfvm; } ;
struct TYPE_9__ {TYPE_1__* desc; } ;
struct TYPE_8__ {TYPE_4__* data; } ;
typedef TYPE_4__ RIOBdescbg ;
typedef TYPE_5__ RDebug ;


 int bfvm_reset (int ) ;
 int is_io_bf (TYPE_5__*) ;

__attribute__((used)) static bool r_debug_bf_kill(RDebug *dbg, int pid, int tid, int sig) {
 if (!is_io_bf (dbg)) {
  return 0;
 }
 RIOBdescbg *o = dbg->iob.io->desc->data;
 if (o) {
  bfvm_reset (o->bfvm);
 }
 return 1;
}
