
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* L; } ;
struct TYPE_5__ {int nCcalls; } ;
typedef TYPE_2__ LexState ;


 int luaX_lexerror (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void enterlevel(LexState*ls){
if(++ls->L->nCcalls>200)
luaX_lexerror(ls,"chunk has too many syntax levels",0);
}
