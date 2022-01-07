
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_3__ {size_t imports_by_ord_size; int * imports_by_ord; } ;
typedef int RBinImport ;
typedef TYPE_1__ ELFOBJ ;


 int r_bin_import_clone (int *) ;
 int r_bin_import_free (int ) ;

__attribute__((used)) static void setimpord(ELFOBJ* eobj, ut32 ord, RBinImport *ptr) {
 if (!eobj->imports_by_ord || ord >= eobj->imports_by_ord_size) {
  return;
 }
 r_bin_import_free (eobj->imports_by_ord[ord]);
 eobj->imports_by_ord[ord] = r_bin_import_clone (ptr);
}
