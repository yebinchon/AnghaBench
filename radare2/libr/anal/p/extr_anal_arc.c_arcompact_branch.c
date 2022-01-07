
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef scalar_t__ st64 ;
typedef int RAnalOp ;


 int arcompact_jump (int *,int,scalar_t__,int ) ;

__attribute__((used)) static void arcompact_branch(RAnalOp *op, ut64 addr, st64 offset, ut8 delay) {
 arcompact_jump (op, addr, (addr & ~3) + offset, delay);
}
