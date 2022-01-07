
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int anal; } ;
typedef int RList ;
typedef TYPE_1__ RCore ;
typedef int RAnalBlock ;


 int eprintf (char*) ;
 int * r_anal_bb_from_offset (int ,int ) ;
 int * recurse (TYPE_1__*,int *,int *) ;

__attribute__((used)) static RList *recurse_bb(RCore *core, ut64 addr, RAnalBlock *dest) {
 RAnalBlock *bb;
 RList *ret;
 bb = r_anal_bb_from_offset (core->anal, addr);
 if (bb == dest) {
  eprintf ("path found!");
  return ((void*)0);
 }
 ret = recurse (core, bb, dest);
 return ret;
}
