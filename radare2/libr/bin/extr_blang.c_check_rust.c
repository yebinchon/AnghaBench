
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ RBinSymbol ;


 scalar_t__ strstr (scalar_t__,char*) ;

__attribute__((used)) static inline bool check_rust(RBinSymbol *sym) {
 return sym->name && strstr (sym->name, "_$LT$");
}
