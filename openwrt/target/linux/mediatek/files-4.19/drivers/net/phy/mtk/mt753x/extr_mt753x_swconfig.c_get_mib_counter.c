
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct gsw_mt753x {int dummy; } ;
struct TYPE_2__ {unsigned int offset; int size; } ;


 int MIB_COUNTER_REG (int,unsigned int) ;
 TYPE_1__* mt753x_mibs ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;

__attribute__((used)) static u64 get_mib_counter(struct gsw_mt753x *gsw, int i, int port)
{
 unsigned int offset;
 u64 lo, hi, hi2;

 offset = mt753x_mibs[i].offset;

 if (mt753x_mibs[i].size == 1)
  return mt753x_reg_read(gsw, MIB_COUNTER_REG(port, offset));

 do {
  hi = mt753x_reg_read(gsw, MIB_COUNTER_REG(port, offset + 4));
  lo = mt753x_reg_read(gsw, MIB_COUNTER_REG(port, offset));
  hi2 = mt753x_reg_read(gsw, MIB_COUNTER_REG(port, offset + 4));
 } while (hi2 != hi);

 return (hi << 32) | lo;
}
