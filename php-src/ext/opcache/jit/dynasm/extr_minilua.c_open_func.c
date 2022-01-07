
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_17__ {int lasttarget; int jpc; int h; int * bl; scalar_t__ nactvar; scalar_t__ nlocvars; scalar_t__ np; scalar_t__ nk; scalar_t__ freereg; scalar_t__ pc; TYPE_1__* L; TYPE_3__* ls; struct TYPE_17__* prev; TYPE_2__* f; } ;
struct TYPE_16__ {int source; TYPE_4__* fs; TYPE_1__* L; } ;
struct TYPE_15__ {int maxstacksize; int source; } ;
typedef TYPE_2__ Proto ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;


 int incr_top (TYPE_1__*) ;
 TYPE_2__* luaF_newproto (TYPE_1__*) ;
 int luaH_new (TYPE_1__*,int ,int ) ;
 int sethvalue (TYPE_1__*,int ,int ) ;
 int setptvalue (TYPE_1__*,int ,TYPE_2__*) ;

__attribute__((used)) static void open_func(LexState*ls,FuncState*fs){
lua_State*L=ls->L;
Proto*f=luaF_newproto(L);
fs->f=f;
fs->prev=ls->fs;
fs->ls=ls;
fs->L=L;
ls->fs=fs;
fs->pc=0;
fs->lasttarget=-1;
fs->jpc=(-1);
fs->freereg=0;
fs->nk=0;
fs->np=0;
fs->nlocvars=0;
fs->nactvar=0;
fs->bl=((void*)0);
f->source=ls->source;
f->maxstacksize=2;
fs->h=luaH_new(L,0,0);
sethvalue(L,L->top,fs->h);
incr_top(L);
setptvalue(L,L->top,f);
incr_top(L);
}
