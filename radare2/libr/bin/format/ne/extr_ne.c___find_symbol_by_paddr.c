
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_2__ {scalar_t__ paddr; } ;
typedef TYPE_1__ RBinSymbol ;



__attribute__((used)) static int __find_symbol_by_paddr (const void *paddr, const void *sym) {
 return (int)!(*(ut64 *)paddr == ((RBinSymbol *)sym)->paddr);
}
