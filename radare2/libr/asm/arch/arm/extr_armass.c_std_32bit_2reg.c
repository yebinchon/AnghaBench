
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int st8 ;
struct TYPE_3__ {int o; int * a; } ;
typedef TYPE_1__ ArmOpcode ;


 int DOTN_BIT ;
 int S_BIT ;
 int err ;
 int getreg (int ) ;
 int thumb_getshift (int ) ;

__attribute__((used)) static st8 std_32bit_2reg(ArmOpcode *ao, ut64 m, bool shift) {
 ut8 rd = getreg (ao->a[0]);
 ut8 rn = getreg (ao->a[1]);
 if ((rd > 15) || (rn > 15) || (m & DOTN_BIT)) {
  return -1;
 }
 if (m & S_BIT) {
  ao->o |= 1 << 28;
 }
 if (shift) {
  err = 0;
  ut32 shiftnum = thumb_getshift (ao->a[2]);
  if (err) {
   return -1;
  }
  ao->o |= shiftnum;
  ao->o |= rd << 24;
  ao->o |= rn << 8;
 } else {
  ao->o |= rd;
  ao->o |= rn << 24;
 }
 return 4;
}
