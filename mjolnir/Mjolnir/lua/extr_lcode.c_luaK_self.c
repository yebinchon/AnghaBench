
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int info; } ;
struct TYPE_16__ {TYPE_1__ u; int k; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_17__ {int freereg; } ;
typedef TYPE_3__ FuncState ;


 int OP_SELF ;
 int VNONRELOC ;
 int freeexp (TYPE_3__*,TYPE_2__*) ;
 int luaK_codeABC (TYPE_3__*,int ,int,int,int ) ;
 int luaK_exp2RK (TYPE_3__*,TYPE_2__*) ;
 int luaK_exp2anyreg (TYPE_3__*,TYPE_2__*) ;
 int luaK_reserveregs (TYPE_3__*,int) ;

void luaK_self (FuncState *fs, expdesc *e, expdesc *key) {
  int ereg;
  luaK_exp2anyreg(fs, e);
  ereg = e->u.info;
  freeexp(fs, e);
  e->u.info = fs->freereg;
  e->k = VNONRELOC;
  luaK_reserveregs(fs, 2);
  luaK_codeABC(fs, OP_SELF, e->u.info, ereg, luaK_exp2RK(fs, key));
  freeexp(fs, key);
}
