
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int types_size; } ;
struct TYPE_8__ {TYPE_2__* types; TYPE_1__ header; } ;
struct TYPE_7__ {int descriptor_id; } ;
typedef TYPE_3__ RBinDexObj ;


 char* getstr (TYPE_3__*,int ) ;

__attribute__((used)) static char *dex_type_descriptor(RBinDexObj *bin, int type_idx) {
 if (type_idx < 0 || type_idx >= bin->header.types_size) {
  return ((void*)0);
 }
 return getstr (bin, bin->types[type_idx].descriptor_id);
}
