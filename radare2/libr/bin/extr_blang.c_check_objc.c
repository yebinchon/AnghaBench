
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ RBinSymbol ;


 int strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static inline bool check_objc(RBinSymbol *sym) {
 if (sym->name && !strncmp (sym->name, "_OBJC_", 6)) {

  return 1;
 }
 return 0;
}
