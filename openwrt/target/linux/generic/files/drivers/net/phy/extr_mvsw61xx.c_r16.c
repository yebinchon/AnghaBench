
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int (* read ) (struct mii_bus*,int,int) ;int (* write ) (struct mii_bus*,int,int ,int) ;} ;


 int MV_INDIRECT_ADDR_S ;
 int MV_INDIRECT_INPROGRESS ;
 int MV_INDIRECT_READ ;
 int MV_INDIRECT_REG_CMD ;
 int MV_INDIRECT_REG_DATA ;
 int mvsw61xx_wait_mask_raw (struct mii_bus*,int,int ,int ,int ) ;
 int stub1 (struct mii_bus*,int,int) ;
 int stub2 (struct mii_bus*,int,int ,int) ;
 int stub3 (struct mii_bus*,int,int) ;

__attribute__((used)) static u16
r16(struct mii_bus *bus, bool indirect, int base_addr, int addr, int reg)
{
 u16 ind_addr;

 if (!indirect)
  return bus->read(bus, addr, reg);


 mvsw61xx_wait_mask_raw(bus, base_addr, MV_INDIRECT_REG_CMD,
   MV_INDIRECT_INPROGRESS, 0);


 ind_addr = MV_INDIRECT_READ | (addr << MV_INDIRECT_ADDR_S) | reg;
 bus->write(bus, base_addr, MV_INDIRECT_REG_CMD,
   ind_addr);


 mvsw61xx_wait_mask_raw(bus, base_addr, MV_INDIRECT_REG_CMD,
   MV_INDIRECT_INPROGRESS, 0);


 return bus->read(bus, base_addr, MV_INDIRECT_REG_DATA);
}
