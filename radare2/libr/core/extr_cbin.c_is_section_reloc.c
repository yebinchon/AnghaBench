
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int symbol; } ;
typedef TYPE_1__ RBinReloc ;


 int is_section_symbol (int ) ;

__attribute__((used)) static bool is_section_reloc(RBinReloc *r) {
 return is_section_symbol (r->symbol);
}
