
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int token; } ;
struct TYPE_11__ {TYPE_2__* fs; TYPE_1__ t; } ;
struct TYPE_10__ {int nactvar; int freereg; } ;
typedef TYPE_3__ LexState ;


 int block_follow (int ) ;
 int enterlevel (TYPE_3__*) ;
 int leavelevel (TYPE_3__*) ;
 int statement (TYPE_3__*) ;
 int testnext (TYPE_3__*,char) ;

__attribute__((used)) static void chunk(LexState*ls){
int islast=0;
enterlevel(ls);
while(!islast&&!block_follow(ls->t.token)){
islast=statement(ls);
testnext(ls,';');
ls->fs->freereg=ls->fs->nactvar;
}
leavelevel(ls);
}
