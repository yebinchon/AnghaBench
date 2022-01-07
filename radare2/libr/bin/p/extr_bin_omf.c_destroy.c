
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int * bin_obj; } ;
typedef TYPE_2__ RBinFile ;


 int r_bin_free_all_omf_obj (int *) ;

__attribute__((used)) static void destroy(RBinFile *bf) {
 r_bin_free_all_omf_obj (bf->o->bin_obj);
 bf->o->bin_obj = ((void*)0);
}
