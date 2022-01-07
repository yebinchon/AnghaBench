
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ip17xx_state {int mii_bus; } ;


 int mdiobus_write (int ,int,int,int ) ;
 int pr_debug (char*,int,int,int ) ;
 int pr_warning (char*,int,int,int) ;

__attribute__((used)) static int ip_phy_write(struct ip17xx_state *state, int port, int reg, u16 val)
{
 int err;




 err = mdiobus_write(state->mii_bus, port, reg, val);
 if (err < 0)
  pr_warning("IP17xx: Unable to write MII register %d,%d: error %d\n", port, reg, -err);
 return err;
}
