
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17xx_state {int mii_bus; } ;


 int mdiobus_read (int ,int,int) ;
 int pr_debug (char*,int,int,int) ;
 int pr_warning (char*,int,int,int) ;

__attribute__((used)) static int ip_phy_read(struct ip17xx_state *state, int port, int reg)
{
 int val = mdiobus_read(state->mii_bus, port, reg);
 if (val < 0)
  pr_warning("IP17xx: Unable to get MII register %d,%d: error %d\n", port, reg, -val);




 return val;
}
