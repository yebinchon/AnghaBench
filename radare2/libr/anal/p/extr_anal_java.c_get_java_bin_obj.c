
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


typedef int ut8 ;
struct TYPE_8__ {TYPE_5__* bin; } ;
struct TYPE_13__ {TYPE_1__ binb; } ;
struct TYPE_12__ {TYPE_3__* cur; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_10__ {TYPE_2__* o; } ;
struct TYPE_9__ {int * bin_obj; TYPE_4__* plugin; } ;
typedef TYPE_4__ RBinPlugin ;
typedef int RBinJavaObj ;
typedef TYPE_5__ RBin ;
typedef TYPE_6__ RAnal ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static RBinJavaObj * get_java_bin_obj(RAnal *anal) {
 RBin *b = anal->binb.bin;
 RBinPlugin *plugin = b->cur && b->cur->o ? b->cur->o->plugin : ((void*)0);
 ut8 is_java = (plugin && strcmp (plugin->name, "java") == 0) ? 1 : 0;
 return is_java ? b->cur->o->bin_obj : ((void*)0);
}
