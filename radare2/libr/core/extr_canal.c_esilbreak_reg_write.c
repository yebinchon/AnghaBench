
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int ut64 ;
struct TYPE_23__ {int address; TYPE_8__* user; TYPE_10__* anal; } ;
struct TYPE_22__ {int type; } ;
struct TYPE_21__ {TYPE_4__* assembler; } ;
struct TYPE_20__ {TYPE_7__* core; } ;
struct TYPE_19__ {int io; } ;
struct TYPE_18__ {int bits; TYPE_3__* cur; } ;
struct TYPE_17__ {scalar_t__ name; } ;
struct TYPE_16__ {scalar_t__ arch; } ;
struct TYPE_15__ {scalar_t__ armthumb; } ;
struct TYPE_14__ {int bits; TYPE_6__ coreb; TYPE_5__ iob; int reg; TYPE_2__* cur; TYPE_1__ opt; } ;
typedef TYPE_7__ RCore ;
typedef TYPE_8__ RAnalOp ;
typedef TYPE_9__ RAnalEsil ;
typedef TYPE_10__ RAnal ;




 int UT32_MAX ;
 int UT64_MAX ;
 int add_string_ref (TYPE_7__*,int ,int) ;
 int r_anal_hint_set_bits (TYPE_10__*,int,int) ;
 scalar_t__ r_io_is_valid_offset (int ,int,int) ;
 int r_reg_getv (int ,char*) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strstr (scalar_t__,char*) ;

__attribute__((used)) static int esilbreak_reg_write(RAnalEsil *esil, const char *name, ut64 *val) {
 if (!esil) {
  return 0;
 }
 RAnal *anal = esil->anal;
 RAnalOp *op = esil->user;
 RCore *core = anal->coreb.core;


 ut64 at = *val;
 if (anal && anal->opt.armthumb) {
  if (anal->cur && anal->cur->arch && anal->bits < 33 &&
      strstr (anal->cur->arch, "arm") && !strcmp (name, "pc") && op) {
   switch (op->type) {
   case 129:
   case 128:

    if (!(*val & 1)) {
     r_anal_hint_set_bits (anal, *val, 32);
    } else {
     ut64 snv = r_reg_getv (anal->reg, "pc");
     if (snv != UT32_MAX && snv != UT64_MAX) {
      if (r_io_is_valid_offset (anal->iob.io, *val, 1)) {
       r_anal_hint_set_bits (anal, *val - 1, 16);
      }
     }
    }
    break;
   default:
    break;
   }
  }
 }
 if (core->assembler->bits == 32 && strstr (core->assembler->cur->name, "arm")) {
  if ((!(at & 1)) && r_io_is_valid_offset (anal->iob.io, at, 0)) {
   add_string_ref (anal->coreb.core, esil->address, at);
  }
 }
 return 0;
}
