
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


 char* getstr (TYPE_3__*,int) ;
 scalar_t__ simplifiedDemangling ;
 int simplify (char*) ;

__attribute__((used)) static char *dex_class_name_byid(RBinDexObj *bin, int cid) {
 int tid;
 if (!bin || !bin->types) {
  return ((void*)0);
 }
 if (cid < 0 || cid >= bin->header.types_size) {
  return ((void*)0);
 }
 tid = bin->types[cid].descriptor_id;
 char *s = getstr (bin, tid);
 if (simplifiedDemangling) {
  simplify (s);
 }
 return s;
}
