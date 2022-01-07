
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ token; int seminfo; } ;
struct TYPE_6__ {TYPE_1__ t; TYPE_1__ lookahead; int linenumber; int lastline; } ;
typedef TYPE_2__ LexState ;


 scalar_t__ TK_EOS ;
 scalar_t__ llex (TYPE_2__*,int *) ;

__attribute__((used)) static void luaX_next(LexState*ls){
ls->lastline=ls->linenumber;
if(ls->lookahead.token!=TK_EOS){
ls->t=ls->lookahead;
ls->lookahead.token=TK_EOS;
}
else
ls->t.token=llex(ls,&ls->t.seminfo);
}
