
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


struct TYPE_10__ {TYPE_5__* bin; } ;
struct TYPE_13__ {TYPE_3__ binb; } ;
struct TYPE_12__ {TYPE_2__* cur; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_9__ {TYPE_1__* o; } ;
struct TYPE_8__ {int * bin_obj; TYPE_4__* plugin; } ;
typedef TYPE_4__ RBinPlugin ;
typedef int RBinJavaObj ;
typedef TYPE_5__ RBin ;
typedef TYPE_6__ RAnal ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static RBinJavaObj * r_cmd_java_get_bin_obj(RAnal *anal) {
 RBin *b;
 int is_java;
 RBinPlugin *plugin;
 if (!anal || !anal->binb.bin) {
  return ((void*)0);
 }
 b = anal->binb.bin;
 if (!b->cur || !b->cur->o) {
  return ((void*)0);
 }
 plugin = b->cur->o->plugin;
 is_java = (plugin && strcmp (plugin->name, "java") == 0) ? 1 : 0;
 return is_java ? b->cur->o->bin_obj : ((void*)0);
}
