
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct ip17xx_state {int dummy; } ;
struct TYPE_5__ {int m; int p; } ;
typedef TYPE_1__ reg ;


 int EFAULT ;
 int REG_SUPP (TYPE_1__) ;
 int getPhy (struct ip17xx_state*,TYPE_1__) ;
 int ip_phy_write (struct ip17xx_state*,int ,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static int setPhy(struct ip17xx_state *state, reg mii, u16 value)
{
 int err;

 if (!REG_SUPP(mii))
  return -EFAULT;
 err = ip_phy_write(state, mii.p, mii.m, value);
 if (err < 0)
  return err;
 mdelay(2);
 getPhy(state, mii);
 return 0;
}
