
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct ConsControl {TYPE_4__* t; int nh; } ;
typedef int expdesc ;
struct TYPE_20__ {int freereg; } ;
struct TYPE_15__ {scalar_t__ token; } ;
struct TYPE_19__ {TYPE_1__ t; TYPE_6__* fs; } ;
struct TYPE_16__ {int info; } ;
struct TYPE_17__ {TYPE_2__ s; } ;
struct TYPE_18__ {TYPE_3__ u; } ;
typedef TYPE_5__ LexState ;
typedef TYPE_6__ FuncState ;


 int MAX_INT ;
 int OP_SETTABLE ;
 scalar_t__ TK_NAME ;
 int checkname (TYPE_5__*,int *) ;
 int checknext (TYPE_5__*,char) ;
 int expr (TYPE_5__*,int *) ;
 int luaK_codeABC (TYPE_6__*,int ,int ,int,int) ;
 int luaK_exp2RK (TYPE_6__*,int *) ;
 int luaY_checklimit (TYPE_6__*,int ,int ,char*) ;
 int yindex (TYPE_5__*,int *) ;

__attribute__((used)) static void recfield (LexState *ls, struct ConsControl *cc) {

  FuncState *fs = ls->fs;
  int reg = ls->fs->freereg;
  expdesc key, val;
  int rkkey;
  if (ls->t.token == TK_NAME) {
    luaY_checklimit(fs, cc->nh, MAX_INT, "items in a constructor");
    checkname(ls, &key);
  }
  else
    yindex(ls, &key);
  cc->nh++;
  checknext(ls, '=');
  rkkey = luaK_exp2RK(fs, &key);
  expr(ls, &val);
  luaK_codeABC(fs, OP_SETTABLE, cc->t->u.s.info, rkkey, luaK_exp2RK(fs, &val));
  fs->freereg = reg;
}
