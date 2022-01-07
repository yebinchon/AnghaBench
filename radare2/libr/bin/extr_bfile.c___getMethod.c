
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ methods_ht; } ;
typedef int RBinSymbol ;
typedef TYPE_2__ RBinFile ;


 int * ht_pp_find (scalar_t__,char const*,int *) ;
 int r_return_val_if_fail (int ,int *) ;
 char* sdb_fmt (char*,char const*,char const*) ;

__attribute__((used)) static RBinSymbol *__getMethod(RBinFile *bf, const char *klass, const char *method) {
 r_return_val_if_fail (bf && bf->o && bf->o->methods_ht && klass && method, ((void*)0));
 const char *name = sdb_fmt ("%s::%s", klass, method);
 return ht_pp_find (bf->o->methods_ht, name, ((void*)0));
}
