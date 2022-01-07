
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ RBinSymbol ;


 int is_cxx_symbol (int ) ;

__attribute__((used)) static bool check_cxx(RBinSymbol *sym) {
 return is_cxx_symbol (sym->name);
}
