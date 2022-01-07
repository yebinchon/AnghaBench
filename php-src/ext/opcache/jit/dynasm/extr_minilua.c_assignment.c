
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ k; } ;
struct LHS_assign {TYPE_5__ v; struct LHS_assign* prev; } ;
typedef int expdesc ;
struct TYPE_20__ {scalar_t__ freereg; } ;
struct TYPE_18__ {TYPE_6__* fs; TYPE_1__* L; } ;
struct TYPE_17__ {scalar_t__ nCcalls; } ;
typedef TYPE_2__ LexState ;


 scalar_t__ VINDEXED ;
 scalar_t__ VLOCAL ;
 int VNONRELOC ;
 int adjust_assign (TYPE_2__*,int,int,int *) ;
 int check_condition (TYPE_2__*,int,char*) ;
 int check_conflict (TYPE_2__*,struct LHS_assign*,TYPE_5__*) ;
 int checknext (TYPE_2__*,char) ;
 int explist1 (TYPE_2__*,int *) ;
 int init_exp (int *,int ,scalar_t__) ;
 int luaK_setoneret (TYPE_6__*,int *) ;
 int luaK_storevar (TYPE_6__*,TYPE_5__*,int *) ;
 int luaY_checklimit (TYPE_6__*,int,scalar_t__,char*) ;
 int primaryexp (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ testnext (TYPE_2__*,char) ;

__attribute__((used)) static void assignment(LexState*ls,struct LHS_assign*lh,int nvars){
expdesc e;
check_condition(ls,VLOCAL<=lh->v.k&&lh->v.k<=VINDEXED,
"syntax error");
if(testnext(ls,',')){
struct LHS_assign nv;
nv.prev=lh;
primaryexp(ls,&nv.v);
if(nv.v.k==VLOCAL)
check_conflict(ls,lh,&nv.v);
luaY_checklimit(ls->fs,nvars,200-ls->L->nCcalls,
"variables in assignment");
assignment(ls,&nv,nvars+1);
}
else{
int nexps;
checknext(ls,'=');
nexps=explist1(ls,&e);
if(nexps!=nvars){
adjust_assign(ls,nvars,nexps,&e);
if(nexps>nvars)
ls->fs->freereg-=nexps-nvars;
}
else{
luaK_setoneret(ls->fs,&e);
luaK_storevar(ls->fs,&lh->v,&e);
return;
}
}
init_exp(&e,VNONRELOC,ls->fs->freereg-1);
luaK_storevar(ls->fs,&lh->v,&e);
}
