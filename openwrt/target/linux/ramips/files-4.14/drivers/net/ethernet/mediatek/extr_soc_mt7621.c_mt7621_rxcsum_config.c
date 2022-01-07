
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDMA_ICS_EN ;
 int GDMA_TCS_EN ;
 int GDMA_UCS_EN ;
 int MT7620A_GDMA1_FWD_CFG ;
 int fe_r32 (int ) ;
 int fe_w32 (int,int ) ;

__attribute__((used)) static void mt7621_rxcsum_config(bool enable)
{
 if (enable)
  fe_w32(fe_r32(MT7620A_GDMA1_FWD_CFG) | (GDMA_ICS_EN |
     GDMA_TCS_EN | GDMA_UCS_EN),
    MT7620A_GDMA1_FWD_CFG);
 else
  fe_w32(fe_r32(MT7620A_GDMA1_FWD_CFG) & ~(GDMA_ICS_EN |
     GDMA_TCS_EN | GDMA_UCS_EN),
    MT7620A_GDMA1_FWD_CFG);
}
