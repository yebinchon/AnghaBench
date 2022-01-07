
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int upval; int breaklist; int nactvar; struct TYPE_11__* previous; int isbreakable; } ;
struct TYPE_10__ {TYPE_3__* bl; } ;
struct TYPE_9__ {TYPE_2__* fs; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;
typedef TYPE_3__ BlockCnt ;


 int OP_CLOSE ;
 int luaK_codeABC (TYPE_2__*,int ,int ,int ,int ) ;
 int luaK_concat (TYPE_2__*,int *,int ) ;
 int luaK_jump (TYPE_2__*) ;
 int luaX_syntaxerror (TYPE_1__*,char*) ;

__attribute__((used)) static void breakstat(LexState*ls){
FuncState*fs=ls->fs;
BlockCnt*bl=fs->bl;
int upval=0;
while(bl&&!bl->isbreakable){
upval|=bl->upval;
bl=bl->previous;
}
if(!bl)
luaX_syntaxerror(ls,"no loop to break");
if(upval)
luaK_codeABC(fs,OP_CLOSE,bl->nactvar,0,0);
luaK_concat(fs,&bl->breaklist,luaK_jump(fs));
}
