
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * kv; } ;
struct TYPE_6__ {TYPE_1__* o; } ;
struct TYPE_5__ {TYPE_3__* bin_obj; } ;
typedef int Sdb ;
typedef TYPE_1__ RBinObject ;
typedef TYPE_2__ RBinFile ;
typedef TYPE_3__ BootImageObj ;



__attribute__((used)) static Sdb *get_sdb(RBinFile *bf) {
 RBinObject *o = bf->o;
 BootImageObj *ao;
 if (!o) {
  return ((void*)0);
 }
 ao = o->bin_obj;
 return ao? ao->kv: ((void*)0);
}
