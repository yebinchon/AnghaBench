
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut8 ;
typedef void* ut64 ;
struct TYPE_13__ {scalar_t__ parent_stackptr; scalar_t__ addr; scalar_t__ jump; scalar_t__ stackptr; scalar_t__ fail; int * parent_reg_arena; int size; } ;
struct TYPE_12__ {TYPE_1__* anal; } ;
struct TYPE_11__ {scalar_t__ stackptr; int * last_disasm_reg; int reg; void* gp; } ;
typedef TYPE_2__ RCore ;
typedef int RAnalFunction ;
typedef TYPE_3__ RAnalBlock ;


 scalar_t__ INT_MAX ;
 int R_FREE (int *) ;
 scalar_t__ UT64_MAX ;
 char* get_body (TYPE_2__*,scalar_t__,int ,int) ;
 TYPE_3__* r_anal_bb_get_failbb (int *,TYPE_3__*) ;
 TYPE_3__* r_anal_bb_get_jumpbb (int *,TYPE_3__*) ;
 void* r_reg_arena_dup (int ,int *) ;
 int r_reg_arena_poke (int ,int *) ;
 void* r_reg_getv (int ,char*) ;

__attribute__((used)) static char *get_bb_body(RCore *core, RAnalBlock *b, int opts, RAnalFunction *fcn, bool emu, ut64 saved_gp, ut8 *saved_arena) {
 if (emu) {
  core->anal->gp = saved_gp;
  if (b->parent_reg_arena) {
   r_reg_arena_poke (core->anal->reg, b->parent_reg_arena);
   R_FREE (b->parent_reg_arena);
   ut64 gp = r_reg_getv (core->anal->reg, "gp");
   if (gp) {
    core->anal->gp = gp;
   }
  } else {
   r_reg_arena_poke (core->anal->reg, saved_arena);
  }
 }
 if (b->parent_stackptr != INT_MAX) {
  core->anal->stackptr = b->parent_stackptr;
 }
 char *body = get_body (core, b->addr, b->size, opts);
 if (b->jump != UT64_MAX) {
  if (b->jump > b->addr) {
   RAnalBlock *jumpbb = r_anal_bb_get_jumpbb (fcn, b);
   if (jumpbb) {
    if (emu && core->anal->last_disasm_reg != ((void*)0) && !jumpbb->parent_reg_arena) {
     jumpbb->parent_reg_arena = r_reg_arena_dup (core->anal->reg, core->anal->last_disasm_reg);
    }
    if (jumpbb->parent_stackptr == INT_MAX) {
     jumpbb->parent_stackptr = core->anal->stackptr + b->stackptr;
    }
   }
  }
 }
 if (b->fail != UT64_MAX) {
  if (b->fail > b->addr) {
   RAnalBlock *failbb = r_anal_bb_get_failbb (fcn, b);
   if (failbb) {
    if (emu && core->anal->last_disasm_reg != ((void*)0) && !failbb->parent_reg_arena) {
     failbb->parent_reg_arena = r_reg_arena_dup (core->anal->reg, core->anal->last_disasm_reg);
    }
    if (failbb->parent_stackptr == INT_MAX) {
     failbb->parent_stackptr = core->anal->stackptr + b->stackptr;
    }
   }
  }
 }
 return body;
}
