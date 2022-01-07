
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


 int DOTW_BIT ;
 int getreg (int ) ;

__attribute__((used)) static st8 std_16bit_2reg(ArmOpcode *ao, ut64 m) {
 ut8 rd = getreg (ao->a[0]);
 ut8 rn = getreg (ao->a[1]);
 if ( (rd < 8) && (rn < 8) && !(m & DOTW_BIT)) {
  ao->o |= rd << 8;
  ao->o |= rn << 11;
  return 2;
 }
 return 0;
}
