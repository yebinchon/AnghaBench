
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int cond; } ;
typedef TYPE_1__ RAnalOp ;


 int arcompact_jump (TYPE_1__*,int ,int ,int ) ;
 int map_cond2radare (int ) ;

__attribute__((used)) static void arcompact_jump_cond(RAnalOp *op, ut64 addr, ut64 jump, ut8 delay, ut8 cond) {
 arcompact_jump (op, addr, jump, delay);
 op->cond = map_cond2radare (cond);
}
