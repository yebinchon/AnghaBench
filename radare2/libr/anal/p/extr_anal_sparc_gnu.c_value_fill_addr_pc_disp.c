
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef scalar_t__ st64 ;
struct TYPE_4__ {scalar_t__ base; } ;
typedef TYPE_1__ RAnalValue ;


 TYPE_1__* r_anal_value_new () ;

__attribute__((used)) static RAnalValue * value_fill_addr_pc_disp(const ut64 addr, const st64 disp) {
 RAnalValue *val = r_anal_value_new();
 val->base = addr + disp;
 return val;
}
