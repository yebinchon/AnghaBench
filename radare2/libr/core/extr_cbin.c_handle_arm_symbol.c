
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int vaddr; int paddr; } ;
typedef int RCore ;
typedef TYPE_1__ RBinSymbol ;
typedef int RBinInfo ;


 void handle_arm_hint (int *,int *,int ,int ,int ,int) ;

__attribute__((used)) static void handle_arm_symbol(RCore *core, RBinSymbol *symbol, RBinInfo *info, int va) {
 return handle_arm_hint (core, info, symbol->paddr, symbol->vaddr, symbol->bits, va);
}
