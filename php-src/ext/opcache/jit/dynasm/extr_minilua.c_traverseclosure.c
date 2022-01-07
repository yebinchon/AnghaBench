
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_5__ {int nupvalues; int * upvals; int p; } ;
struct TYPE_6__ {int nupvalues; int * upvalue; scalar_t__ isC; int env; } ;
struct TYPE_7__ {TYPE_1__ l; TYPE_2__ c; } ;
typedef TYPE_3__ Closure ;


 int markobject (int *,int ) ;
 int markvalue (int *,int *) ;

__attribute__((used)) static void traverseclosure(global_State*g,Closure*cl){
markobject(g,cl->c.env);
if(cl->c.isC){
int i;
for(i=0;i<cl->c.nupvalues;i++)
markvalue(g,&cl->c.upvalue[i]);
}
else{
int i;
markobject(g,cl->l.p);
for(i=0;i<cl->l.nupvalues;i++)
markobject(g,cl->l.upvals[i]);
}
}
