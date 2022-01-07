
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* io; } ;
struct TYPE_11__ {TYPE_2__ iob; } ;
struct TYPE_10__ {TYPE_3__* plugin; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_7__ {TYPE_4__* desc; } ;
typedef TYPE_4__ RIODesc ;
typedef TYPE_5__ RDebug ;


 int eprintf (char*) ;
 int strcmp (char*,scalar_t__) ;

__attribute__((used)) static bool isBochs(RDebug *dbg) {
 RIODesc *d = dbg->iob.io->desc;
 if (d && d->plugin && d->plugin->name) {
  if (!strcmp ("bochs", d->plugin->name)) {
   return 1;
  }
 }
 eprintf ("error: the iodesc data is not bochs friendly\n");
 return 0;
}
