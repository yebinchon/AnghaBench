
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int,int) ;} ;


 int MV_INDIRECT_ADDR_S ;
 int MV_INDIRECT_INPROGRESS ;
 int MV_INDIRECT_REG_CMD ;
 int MV_INDIRECT_REG_DATA ;
 int MV_INDIRECT_WRITE ;
 int mvsw61xx_wait_mask_raw (struct mii_bus*,int,int,int ,int ) ;
 int stub1 (struct mii_bus*,int,int,int) ;
 int stub2 (struct mii_bus*,int,int,int) ;
 int stub3 (struct mii_bus*,int,int,int) ;

__attribute__((used)) static void
w16(struct mii_bus *bus, bool indirect, int base_addr, int addr,
  int reg, u16 val)
{
 u16 ind_addr;

 if (!indirect) {
  bus->write(bus, addr, reg, val);
  return;
 }


 mvsw61xx_wait_mask_raw(bus, base_addr, MV_INDIRECT_REG_CMD,
   MV_INDIRECT_INPROGRESS, 0);


 bus->write(bus, base_addr, MV_INDIRECT_REG_DATA, val);


 mvsw61xx_wait_mask_raw(bus, base_addr, MV_INDIRECT_REG_CMD,
   MV_INDIRECT_INPROGRESS, 0);


 ind_addr = MV_INDIRECT_WRITE | (addr << MV_INDIRECT_ADDR_S) | reg;
 bus->write(bus, base_addr, MV_INDIRECT_REG_CMD,
   ind_addr);
}
