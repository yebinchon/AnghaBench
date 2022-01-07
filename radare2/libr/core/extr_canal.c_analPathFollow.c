
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {TYPE_1__* core; int cur; int visited; } ;
struct TYPE_5__ {int anal; } ;
typedef TYPE_2__ RCoreAnalPaths ;
typedef int PJ ;


 scalar_t__ UT64_MAX ;
 int analPaths (TYPE_2__*,int *) ;
 int dict_get (int *,scalar_t__) ;
 int r_anal_bb_from_offset (int ,scalar_t__) ;

__attribute__((used)) static void analPathFollow(RCoreAnalPaths *p, ut64 addr, PJ *pj) {
 if (addr == UT64_MAX) {
  return;
 }
 if (!dict_get (&p->visited, addr)) {
  p->cur = r_anal_bb_from_offset (p->core->anal, addr);
  analPaths (p, pj);
 }
}
