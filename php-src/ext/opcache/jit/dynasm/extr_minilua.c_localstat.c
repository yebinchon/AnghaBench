
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int k; } ;
typedef TYPE_1__ expdesc ;
typedef int LexState ;


 int VVOID ;
 int adjust_assign (int *,int,int,TYPE_1__*) ;
 int adjustlocalvars (int *,int) ;
 int explist1 (int *,TYPE_1__*) ;
 int new_localvar (int *,int ,int ) ;
 int str_checkname (int *) ;
 scalar_t__ testnext (int *,char) ;

__attribute__((used)) static void localstat(LexState*ls){
int nvars=0;
int nexps;
expdesc e;
do{
new_localvar(ls,str_checkname(ls),nvars++);
}while(testnext(ls,','));
if(testnext(ls,'='))
nexps=explist1(ls,&e);
else{
e.k=VVOID;
nexps=0;
}
adjust_assign(ls,nvars,nexps,&e);
adjustlocalvars(ls,nvars);
}
