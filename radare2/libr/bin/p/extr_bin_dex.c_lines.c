
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_dex_obj_t {int * lines_list; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {struct r_bin_dex_obj_t* bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinFile ;



__attribute__((used)) static RList *lines(RBinFile *bf) {
 struct r_bin_dex_obj_t *dex = bf->o->bin_obj;


 return dex->lines_list;

}
