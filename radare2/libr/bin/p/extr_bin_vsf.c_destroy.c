
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_vsf_obj {struct r_bin_vsf_obj* maincpu; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef TYPE_2__ RBinFile ;


 int free (struct r_bin_vsf_obj*) ;

__attribute__((used)) static void destroy(RBinFile *bf) {
 struct r_bin_vsf_obj *obj = (struct r_bin_vsf_obj *)bf->o->bin_obj;
 free (obj->maincpu);
 free (obj);
}
