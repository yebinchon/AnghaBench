
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int * vta_regs; } ;


 int B53_ARLIO_PAGE ;
 int EIO ;
 int VTA_START_CMD ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int b53_do_vlan_op(struct b53_device *dev, u8 op)
{
 unsigned int i;

 b53_write8(dev, B53_ARLIO_PAGE, dev->vta_regs[0], VTA_START_CMD | op);

 for (i = 0; i < 10; i++) {
  u8 vta;

  b53_read8(dev, B53_ARLIO_PAGE, dev->vta_regs[0], &vta);
  if (!(vta & VTA_START_CMD))
   return 0;

  usleep_range(100, 200);
 }

 return -EIO;
}
