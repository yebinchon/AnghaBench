
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* io; } ;
struct TYPE_8__ {TYPE_2__* plugin; } ;
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_6__ {TYPE_3__* desc; } ;
typedef TYPE_4__ RCore ;


 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static bool isGdbPlugin(RCore *core) {
 if (core->io && core->io->desc && core->io->desc->plugin) {
  if (core->io->desc->plugin->name && !strcmp (core->io->desc->plugin->name, "gdb")) {
   return 1;
  }
 }
 return 0;
}
