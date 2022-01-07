
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_28__ {int info; } ;
struct TYPE_29__ {TYPE_3__ s; } ;
struct TYPE_30__ {scalar_t__ k; TYPE_4__ u; } ;
typedef TYPE_5__ expdesc ;
struct TYPE_32__ {int freereg; } ;
struct TYPE_26__ {int ts; } ;
struct TYPE_27__ {int token; TYPE_1__ seminfo; } ;
struct TYPE_31__ {int linenumber; int lastline; TYPE_2__ t; TYPE_7__* fs; } ;
typedef TYPE_6__ LexState ;
typedef TYPE_7__ FuncState ;


 int LUA_MULTRET ;
 int OP_CALL ;

 int VCALL ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VVOID ;
 int check_match (TYPE_6__*,char,char,int) ;
 int codestring (TYPE_6__*,TYPE_5__*,int ) ;
 int constructor (TYPE_6__*,TYPE_5__*) ;
 int explist1 (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ hasmultret (scalar_t__) ;
 int init_exp (TYPE_5__*,int ,int ) ;
 int luaK_codeABC (TYPE_7__*,int ,int,int,int) ;
 int luaK_exp2nextreg (TYPE_7__*,TYPE_5__*) ;
 int luaK_fixline (TYPE_7__*,int) ;
 int luaK_setmultret (TYPE_7__*,TYPE_5__*) ;
 int luaX_next (TYPE_6__*) ;
 int luaX_syntaxerror (TYPE_6__*,char*) ;
 int lua_assert (int) ;

__attribute__((used)) static void funcargs (LexState *ls, expdesc *f) {
  FuncState *fs = ls->fs;
  expdesc args;
  int base, nparams;
  int line = ls->linenumber;
  switch (ls->t.token) {
    case '(': {
      if (line != ls->lastline)
        luaX_syntaxerror(ls,"ambiguous syntax (function call x new statement)");
      luaX_next(ls);
      if (ls->t.token == ')')
        args.k = VVOID;
      else {
        explist1(ls, &args);
        luaK_setmultret(fs, &args);
      }
      check_match(ls, ')', '(', line);
      break;
    }
    case '{': {
      constructor(ls, &args);
      break;
    }
    case 128: {
      codestring(ls, &args, ls->t.seminfo.ts);
      luaX_next(ls);
      break;
    }
    default: {
      luaX_syntaxerror(ls, "function arguments expected");
      return;
    }
  }
  lua_assert(f->k == VNONRELOC);
  base = f->u.s.info;
  if (hasmultret(args.k))
    nparams = LUA_MULTRET;
  else {
    if (args.k != VVOID)
      luaK_exp2nextreg(fs, &args);
    nparams = fs->freereg - (base+1);
  }
  init_exp(f, VCALL, luaK_codeABC(fs, OP_CALL, base, nparams+1, 2));
  luaK_fixline(fs, line);
  fs->freereg = base+1;

}
