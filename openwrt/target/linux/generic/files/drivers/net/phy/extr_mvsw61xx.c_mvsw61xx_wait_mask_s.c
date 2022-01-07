
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_dev {int dummy; } ;


 int ETIMEDOUT ;
 int sr16 (struct switch_dev*,int,int) ;

__attribute__((used)) static int
mvsw61xx_wait_mask_s(struct switch_dev *dev, int addr,
  int reg, u16 mask, u16 val)
{
 int i = 100;
 u16 r;

 do {
  r = sr16(dev, addr, reg) & mask;
  if (r == val)
   return 0;
 } while (--i > 0);

 return -ETIMEDOUT;
}
