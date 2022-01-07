
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int name; int vaddr; int paddr; } ;
struct TYPE_5__ {int anal; int bin; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RBinSymbol ;


 int R_LOG_WARN (char*,int ) ;
 int compute_addr (int ,int ,int ,int) ;
 int r_anal_hint_set_bits (int ,int ,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void handle_arm_special_symbol(RCore *core, RBinSymbol *symbol, int va) {
 ut64 addr = compute_addr (core->bin, symbol->paddr, symbol->vaddr, va);
 if (!strcmp (symbol->name, "$a")) {
  r_anal_hint_set_bits (core->anal, addr, 32);
 } else if (!strcmp (symbol->name, "$x")) {
  r_anal_hint_set_bits (core->anal, addr, 64);
 } else if (!strcmp (symbol->name, "$t")) {
  r_anal_hint_set_bits (core->anal, addr, 16);
 } else if (!strcmp (symbol->name, "$d")) {



 } else {
  R_LOG_WARN ("Special symbol %s not handled\n", symbol->name);
 }
}
