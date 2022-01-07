
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dummy; } ;


 int B53_CTRL_PAGE ;
 int B53_FAST_AGE_CTRL ;
 int EINVAL ;
 int FAST_AGE_DONE ;
 int FAST_AGE_DYNAMIC ;
 int FAST_AGE_STATIC ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int mdelay (int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int b53_flush_arl(struct b53_device *dev)
{
 unsigned int i;

 b53_write8(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL,
     FAST_AGE_DONE | FAST_AGE_DYNAMIC | FAST_AGE_STATIC);

 for (i = 0; i < 10; i++) {
  u8 fast_age_ctrl;

  b53_read8(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL,
     &fast_age_ctrl);

  if (!(fast_age_ctrl & FAST_AGE_DONE))
   return 0;

  mdelay(1);
 }

 pr_warn("time out while flushing ARL\n");

 return -EINVAL;
}
