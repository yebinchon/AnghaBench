
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int st8 ;
struct TYPE_3__ {int o; int * a; } ;
typedef TYPE_1__ ArmOpcode ;


 int DOTN_BIT ;
 int getreg (int ) ;
 int getregmemstart (int ) ;

__attribute__((used)) static st8 mem_32bit_2reg(ArmOpcode *ao, ut64 m) {
 ut8 rd = getreg (ao->a[0]);
 ut8 rn = getregmemstart (ao->a[1]);
 if ((rd > 15) || (rn > 15) || (m & DOTN_BIT)) {
  return -1;
 }
 ao->o |= rd << 4;
 ao->o |= rn << 24;
 return 4;
}
