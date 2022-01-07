
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int bin_obj; } ;
typedef TYPE_2__ RBinFile ;
typedef int RBinAddr ;


 int * r_bin_java_get_entrypoint (int ,int) ;

__attribute__((used)) static RBinAddr *binsym(RBinFile *bf, int sym) {
 return r_bin_java_get_entrypoint (bf->o->bin_obj, sym);
}
