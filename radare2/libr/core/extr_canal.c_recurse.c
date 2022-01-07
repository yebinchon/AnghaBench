
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fail; int jump; } ;
typedef int RList ;
typedef int RCore ;
typedef TYPE_1__ RAnalBlock ;


 int recurse_bb (int *,int ,TYPE_1__*) ;

__attribute__((used)) static RList *recurse(RCore *core, RAnalBlock *from, RAnalBlock *dest) {
 recurse_bb (core, from->jump, dest);
 recurse_bb (core, from->fail, dest);



 return ((void*)0);
}
