
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t; } ;
struct TYPE_5__ {TYPE_1__ type; } ;
typedef TYPE_2__ Sym ;


 int VT_WEAK ;

__attribute__((used)) static void weaken_symbol(Sym *sym) {
 sym->type.t |= VT_WEAK;
}
