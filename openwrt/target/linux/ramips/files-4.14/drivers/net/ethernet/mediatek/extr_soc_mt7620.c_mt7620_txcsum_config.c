
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDMA_ICS_EN ;
 int CDMA_TCS_EN ;
 int CDMA_UCS_EN ;
 int MT7620A_CDMA_CSG_CFG ;
 int fe_r32 (int ) ;
 int fe_w32 (int,int ) ;

__attribute__((used)) static void mt7620_txcsum_config(bool enable)
{
 if (enable)
  fe_w32(fe_r32(MT7620A_CDMA_CSG_CFG) | (CDMA_ICS_EN |
     CDMA_UCS_EN | CDMA_TCS_EN),
    MT7620A_CDMA_CSG_CFG);
 else
  fe_w32(fe_r32(MT7620A_CDMA_CSG_CFG) & ~(CDMA_ICS_EN |
     CDMA_UCS_EN | CDMA_TCS_EN),
    MT7620A_CDMA_CSG_CFG);
}
