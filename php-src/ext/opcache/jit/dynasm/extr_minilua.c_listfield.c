
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ConsControl {int tostore; int na; int v; } ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ LexState ;


 scalar_t__ INT_MAX ;
 int expr (TYPE_1__*,int *) ;
 int luaY_checklimit (int ,int ,scalar_t__,char*) ;

__attribute__((used)) static void listfield(LexState*ls,struct ConsControl*cc){
expr(ls,&cc->v);
luaY_checklimit(ls->fs,cc->na,(INT_MAX-2),"items in a constructor");
cc->na++;
cc->tostore++;
}
