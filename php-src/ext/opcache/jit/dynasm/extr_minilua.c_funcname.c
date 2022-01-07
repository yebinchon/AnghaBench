
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_6__ {char token; } ;
struct TYPE_7__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;


 int field (TYPE_2__*,int *) ;
 int singlevar (TYPE_2__*,int *) ;

__attribute__((used)) static int funcname(LexState*ls,expdesc*v){
int needself=0;
singlevar(ls,v);
while(ls->t.token=='.')
field(ls,v);
if(ls->t.token==':'){
needself=1;
field(ls,v);
}
return needself;
}
