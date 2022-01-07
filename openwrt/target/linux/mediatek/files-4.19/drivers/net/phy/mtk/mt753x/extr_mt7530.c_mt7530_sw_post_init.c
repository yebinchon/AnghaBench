
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mii_write ) (struct gsw_mt753x*,int,int ,int ) ;int (* mii_read ) (struct gsw_mt753x*,int,int ) ;} ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int MT753X_NUM_PHYS ;
 int mt7530_phy_setting (struct gsw_mt753x*) ;
 int stub1 (struct gsw_mt753x*,int,int ) ;
 int stub2 (struct gsw_mt753x*,int,int ,int ) ;

__attribute__((used)) static int mt7530_sw_post_init(struct gsw_mt753x *gsw)
{
 int i;
 u32 val;

 mt7530_phy_setting(gsw);

 for (i = 0; i < MT753X_NUM_PHYS; i++) {
  val = gsw->mii_read(gsw, i, MII_BMCR);
  val &= ~BMCR_PDOWN;
  gsw->mii_write(gsw, i, MII_BMCR, val);
 }

 return 0;
}
