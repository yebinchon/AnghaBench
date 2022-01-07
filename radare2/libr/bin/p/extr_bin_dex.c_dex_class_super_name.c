
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int super_class; } ;
struct TYPE_8__ {int types_size; } ;
struct TYPE_10__ {TYPE_2__* types; TYPE_1__ header; } ;
struct TYPE_9__ {int descriptor_id; } ;
typedef TYPE_3__ RBinDexObj ;
typedef TYPE_4__ RBinDexClass ;


 char const* getstr (TYPE_3__*,int) ;
 int r_return_val_if_fail (int ,int *) ;

__attribute__((used)) static const char *dex_class_super_name(RBinDexObj *bin, RBinDexClass *c) {
 r_return_val_if_fail (bin && bin->types && c, ((void*)0));

 int cid = c->super_class;
 if (cid < 0 || cid >= bin->header.types_size) {
  return ((void*)0);
 }
 int tid = bin->types[cid].descriptor_id;
 return getstr (bin, tid);
}
