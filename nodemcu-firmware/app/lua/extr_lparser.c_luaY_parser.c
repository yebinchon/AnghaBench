
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct LexState {int * fs; int * buff; } ;
struct FuncState {TYPE_2__* f; int * prev; } ;
struct TYPE_11__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int ZIO ;
struct TYPE_12__ {scalar_t__ nups; int is_vararg; } ;
typedef int TString ;
typedef TYPE_2__ Proto ;
typedef int Mbuffer ;


 int TK_EOS ;
 int VARARG_ISVARARG ;
 int check (struct LexState*,int ) ;
 int chunk (struct LexState*) ;
 int close_func (struct LexState*) ;
 int compile_stripdebug (TYPE_1__*,TYPE_2__*) ;
 int incr_top (TYPE_1__*) ;
 int * luaS_new (TYPE_1__*,char const*) ;
 int luaX_next (struct LexState*) ;
 int luaX_setinput (TYPE_1__*,struct LexState*,int *,int *) ;
 int lua_assert (int) ;
 int open_func (struct LexState*,struct FuncState*) ;
 int setsvalue2s (TYPE_1__*,int ,int *) ;

Proto *luaY_parser (lua_State *L, ZIO *z, Mbuffer *buff, const char *name) {
  struct LexState lexstate;
  struct FuncState funcstate;
  TString *tname = luaS_new(L, name);
  setsvalue2s(L, L->top, tname);
  incr_top(L);
  lexstate.buff = buff;
  luaX_setinput(L, &lexstate, z, tname);
  open_func(&lexstate, &funcstate);
  funcstate.f->is_vararg = VARARG_ISVARARG;
  luaX_next(&lexstate);
  chunk(&lexstate);
  check(&lexstate, TK_EOS);
  close_func(&lexstate);



  L->top--;
  lua_assert(funcstate.prev == ((void*)0));
  lua_assert(funcstate.f->nups == 0);
  lua_assert(lexstate.fs == ((void*)0));
  return funcstate.f;
}
