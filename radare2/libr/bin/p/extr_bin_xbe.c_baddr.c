
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {int base; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
typedef TYPE_3__ r_bin_xbe_obj_t ;
struct TYPE_9__ {TYPE_1__* o; } ;
struct TYPE_6__ {TYPE_3__* bin_obj; } ;
typedef TYPE_4__ RBinFile ;



__attribute__((used)) static ut64 baddr(RBinFile *bf) {
 r_bin_xbe_obj_t *obj = bf->o->bin_obj;
 return obj->header.base;
}
