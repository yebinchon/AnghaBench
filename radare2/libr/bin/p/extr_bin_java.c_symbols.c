
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_java_obj_t {int dummy; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinFile ;


 int * r_bin_java_get_symbols (struct r_bin_java_obj_t*) ;

__attribute__((used)) static RList *symbols(RBinFile *bf) {
 return r_bin_java_get_symbols ((struct r_bin_java_obj_t *) bf->o->bin_obj);
}
