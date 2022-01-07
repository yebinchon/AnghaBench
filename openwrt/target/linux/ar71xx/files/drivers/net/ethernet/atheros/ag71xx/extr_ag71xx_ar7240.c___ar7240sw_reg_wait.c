
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int dummy; } ;


 int ETIMEDOUT ;
 int __ar7240sw_reg_read (struct mii_bus*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __ar7240sw_reg_wait(struct mii_bus *mii, u32 reg, u32 mask, u32 val,
          unsigned timeout)
{
 int i;

 for (i = 0; i < timeout; i++) {
  u32 t;

  t = __ar7240sw_reg_read(mii, reg);
  if ((t & mask) == val)
   return 0;

  usleep_range(1000, 2000);
 }

 return -ETIMEDOUT;
}
