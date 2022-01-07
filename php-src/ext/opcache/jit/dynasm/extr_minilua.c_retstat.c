
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ k; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_21__ {int nactvar; } ;
struct TYPE_18__ {char token; } ;
struct TYPE_20__ {TYPE_1__ t; TYPE_4__* fs; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;


 int OP_TAILCALL ;
 int SET_OPCODE (int ,int ) ;
 scalar_t__ VCALL ;
 scalar_t__ block_follow (char) ;
 int explist1 (TYPE_3__*,TYPE_2__*) ;
 int getcode (TYPE_4__*,TYPE_2__*) ;
 scalar_t__ hasmultret (scalar_t__) ;
 int luaK_exp2anyreg (TYPE_4__*,TYPE_2__*) ;
 int luaK_exp2nextreg (TYPE_4__*,TYPE_2__*) ;
 int luaK_ret (TYPE_4__*,int,int) ;
 int luaK_setmultret (TYPE_4__*,TYPE_2__*) ;
 int luaX_next (TYPE_3__*) ;

__attribute__((used)) static void retstat(LexState*ls){
FuncState*fs=ls->fs;
expdesc e;
int first,nret;
luaX_next(ls);
if(block_follow(ls->t.token)||ls->t.token==';')
first=nret=0;
else{
nret=explist1(ls,&e);
if(hasmultret(e.k)){
luaK_setmultret(fs,&e);
if(e.k==VCALL&&nret==1){
SET_OPCODE(getcode(fs,&e),OP_TAILCALL);
}
first=fs->nactvar;
nret=(-1);
}
else{
if(nret==1)
first=luaK_exp2anyreg(fs,&e);
else{
luaK_exp2nextreg(fs,&e);
first=fs->nactvar;
}
}
}
luaK_ret(fs,first,nret);
}
