
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_3__ {size_t symbols_by_ord_size; int ** symbols_by_ord; } ;
typedef int RBinSymbol ;
typedef TYPE_1__ ELFOBJ ;


 int r_bin_symbol_free (int *) ;

__attribute__((used)) static void setsymord(ELFOBJ* eobj, ut32 ord, RBinSymbol *ptr) {
 if (!eobj->symbols_by_ord || ord >= eobj->symbols_by_ord_size) {
  return;
 }
 r_bin_symbol_free (eobj->symbols_by_ord[ord]);
 eobj->symbols_by_ord[ord] = ptr;
}
