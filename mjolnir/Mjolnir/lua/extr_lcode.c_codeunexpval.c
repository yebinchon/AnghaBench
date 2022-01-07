
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int info; } ;
struct TYPE_7__ {int k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int OpCode ;
typedef int FuncState ;


 int VRELOCABLE ;
 int freeexp (int *,TYPE_2__*) ;
 int luaK_codeABC (int *,int ,int ,int,int ) ;
 int luaK_exp2anyreg (int *,TYPE_2__*) ;
 int luaK_fixline (int *,int) ;

__attribute__((used)) static void codeunexpval (FuncState *fs, OpCode op, expdesc *e, int line) {
  int r = luaK_exp2anyreg(fs, e);
  freeexp(fs, e);
  e->u.info = luaK_codeABC(fs, op, 0, r, 0);
  e->k = VRELOCABLE;
  luaK_fixline(fs, line);
}
