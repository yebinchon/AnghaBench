
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_GDM1_ICS_EN ;
 int FE_GDM1_TCS_EN ;
 int FE_GDM1_UCS_EN ;
 int FE_GDMA1_FWD_CFG ;
 int fe_r32 (int ) ;
 int fe_w32 (int,int ) ;

__attribute__((used)) static void fe_rxcsum_config(bool enable)
{
 if (enable)
  fe_w32(fe_r32(FE_GDMA1_FWD_CFG) | (FE_GDM1_ICS_EN |
     FE_GDM1_TCS_EN | FE_GDM1_UCS_EN),
    FE_GDMA1_FWD_CFG);
 else
  fe_w32(fe_r32(FE_GDMA1_FWD_CFG) & ~(FE_GDM1_ICS_EN |
     FE_GDM1_TCS_EN | FE_GDM1_UCS_EN),
    FE_GDMA1_FWD_CFG);
}
