
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut32 ;
struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 scalar_t__ i8051_reg_read (int ,char*) ;

__attribute__((used)) static ut32 map_direct_addr(RAnal *anal, ut8 addr) {
 if (addr < 0x80) {
  return addr + i8051_reg_read (anal->reg, "_idata");
 } else {
  return addr + i8051_reg_read (anal->reg, "_sfr");
 }
}
