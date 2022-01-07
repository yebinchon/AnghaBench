
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RT5350_SDM_CFG ;
 int RT5350_SDM_ICS_EN ;
 int RT5350_SDM_TCS_EN ;
 int RT5350_SDM_UCS_EN ;
 int fe_r32 (int ) ;
 int fe_w32 (int,int ) ;

__attribute__((used)) static void rt5350_rxcsum_config(bool enable)
{
 if (enable)
  fe_w32(fe_r32(RT5350_SDM_CFG) | (RT5350_SDM_ICS_EN |
    RT5350_SDM_TCS_EN | RT5350_SDM_UCS_EN),
    RT5350_SDM_CFG);
 else
  fe_w32(fe_r32(RT5350_SDM_CFG) & ~(RT5350_SDM_ICS_EN |
    RT5350_SDM_TCS_EN | RT5350_SDM_UCS_EN),
    RT5350_SDM_CFG);
}
