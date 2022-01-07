
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int info; } ;
struct TYPE_15__ {TYPE_1__ s; } ;
struct TYPE_16__ {scalar_t__ k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_17__ {int pc; } ;
typedef int Instruction ;
typedef TYPE_4__ FuncState ;


 int GETARG_B (int ) ;
 scalar_t__ GET_OPCODE (int ) ;
 int NO_REG ;
 scalar_t__ OP_NOT ;
 int OP_TEST ;
 int OP_TESTSET ;
 scalar_t__ VRELOCABLE ;
 int condjump (TYPE_4__*,int ,int ,int ,int) ;
 int discharge2anyreg (TYPE_4__*,TYPE_3__*) ;
 int freeexp (TYPE_4__*,TYPE_3__*) ;
 int getcode (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int jumponcond (FuncState *fs, expdesc *e, int cond) {
  if (e->k == VRELOCABLE) {
    Instruction ie = getcode(fs, e);
    if (GET_OPCODE(ie) == OP_NOT) {
      fs->pc--;
      return condjump(fs, OP_TEST, GETARG_B(ie), 0, !cond);
    }

  }
  discharge2anyreg(fs, e);
  freeexp(fs, e);
  return condjump(fs, OP_TESTSET, NO_REG, e->u.s.info, cond);
}
