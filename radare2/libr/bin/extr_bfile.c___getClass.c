
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ classes_ht; } ;
typedef TYPE_2__ RBinFile ;
typedef int RBinClass ;


 int * ht_pp_find (scalar_t__,char const*,int *) ;
 int r_return_val_if_fail (int ,int *) ;

__attribute__((used)) static RBinClass *__getClass(RBinFile *bf, const char *name) {
 r_return_val_if_fail (bf && bf->o && bf->o->classes_ht && name, ((void*)0));
 return ht_pp_find (bf->o->classes_ht, name, ((void*)0));
}
