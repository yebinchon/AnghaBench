
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct LexState {int * buff; } ;
struct FuncState {TYPE_1__* f; } ;
typedef int lua_State ;
typedef int ZIO ;
struct TYPE_3__ {int is_vararg; } ;
typedef TYPE_1__ Proto ;
typedef int Mbuffer ;


 int TK_EOS ;
 int check (struct LexState*,int ) ;
 int chunk (struct LexState*) ;
 int close_func (struct LexState*) ;
 int luaS_new (int *,char const*) ;
 int luaX_next (struct LexState*) ;
 int luaX_setinput (int *,struct LexState*,int *,int ) ;
 int open_func (struct LexState*,struct FuncState*) ;

__attribute__((used)) static Proto*luaY_parser(lua_State*L,ZIO*z,Mbuffer*buff,const char*name){
struct LexState lexstate;
struct FuncState funcstate;
lexstate.buff=buff;
luaX_setinput(L,&lexstate,z,luaS_new(L,name));
open_func(&lexstate,&funcstate);
funcstate.f->is_vararg=2;
luaX_next(&lexstate);
chunk(&lexstate);
check(&lexstate,TK_EOS);
close_func(&lexstate);
return funcstate.f;
}
