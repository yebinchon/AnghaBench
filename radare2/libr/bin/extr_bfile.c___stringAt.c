
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int strings_db; } ;
typedef int RList ;
typedef int RBinString ;
typedef TYPE_2__ RBinFile ;


 scalar_t__ UT64_MAX ;
 int * ht_up_find (int ,scalar_t__,int *) ;

__attribute__((used)) static RBinString *__stringAt(RBinFile *bf, RList *ret, ut64 addr) {
 if (addr != 0 && addr != UT64_MAX) {
  return ht_up_find (bf->o->strings_db, addr, ((void*)0));
 }
 return ((void*)0);
}
