
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ip17xx_state {int dummy; } ;
struct TYPE_4__ {int m; int p; } ;
typedef TYPE_1__ reg ;


 int EFAULT ;
 int REG_SUPP (TYPE_1__) ;
 int ip_phy_read (struct ip17xx_state*,int ,int ) ;

__attribute__((used)) static int getPhy(struct ip17xx_state *state, reg mii)
{
 if (!REG_SUPP(mii))
  return -EFAULT;
 return ip_phy_read(state, mii.p, mii.m);
}
