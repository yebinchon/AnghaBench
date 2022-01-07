
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int info; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct TYPE_10__ {int k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef scalar_t__ OpCode ;
typedef int FuncState ;


 scalar_t__ OP_EQ ;
 int VJMP ;
 int condjump (int *,scalar_t__,int,int,int) ;
 int freeexp (int *,TYPE_3__*) ;
 int luaK_exp2RK (int *,TYPE_3__*) ;

__attribute__((used)) static void codecomp(FuncState*fs,OpCode op,int cond,expdesc*e1,
expdesc*e2){
int o1=luaK_exp2RK(fs,e1);
int o2=luaK_exp2RK(fs,e2);
freeexp(fs,e2);
freeexp(fs,e1);
if(cond==0&&op!=OP_EQ){
int temp;
temp=o1;o1=o2;o2=temp;
cond=1;
}
e1->u.s.info=condjump(fs,op,cond,o1,o2);
e1->k=VJMP;
}
