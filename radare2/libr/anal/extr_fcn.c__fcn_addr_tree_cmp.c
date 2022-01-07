
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ addr; } ;
typedef int RBNode ;
typedef TYPE_1__ RAnalFunction ;


 TYPE_1__* ADDR_FCN_CONTAINER (int const*) ;

__attribute__((used)) static int _fcn_addr_tree_cmp(const void *a_, const RBNode *b_, void *user) {
 const RAnalFunction *a = (const RAnalFunction *)a_;
 const RAnalFunction *b = ADDR_FCN_CONTAINER (b_);
 ut64 from0 = a->addr, from1 = b->addr;
 if (from0 != from1) {
  return from0 < from1 ? -1 : 1;
 }
 return 0;
}
