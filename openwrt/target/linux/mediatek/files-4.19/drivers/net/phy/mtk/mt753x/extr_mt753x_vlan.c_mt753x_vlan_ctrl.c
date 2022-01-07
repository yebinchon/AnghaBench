
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int dev; } ;


 int VTCR ;
 int VTCR_BUSY ;
 int VTCR_FUNC_M ;
 int VTCR_FUNC_S ;
 int VTCR_VID_M ;
 int dev_info (int ,char*) ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int usleep_range (int,int) ;

void mt753x_vlan_ctrl(struct gsw_mt753x *gsw, u32 cmd, u32 val)
{
 int i;

 mt753x_reg_write(gsw, VTCR,
    VTCR_BUSY | ((cmd << VTCR_FUNC_S) & VTCR_FUNC_M) |
    (val & VTCR_VID_M));

 for (i = 0; i < 300; i++) {
  u32 val = mt753x_reg_read(gsw, VTCR);

  if ((val & VTCR_BUSY) == 0)
   break;

  usleep_range(1000, 1100);
 }

 if (i == 300)
  dev_info(gsw->dev, "vtcr timeout\n");
}
