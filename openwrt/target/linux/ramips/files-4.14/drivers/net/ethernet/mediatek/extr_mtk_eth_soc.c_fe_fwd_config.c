
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fe_priv {int flags; } ;


 int FE_FLAG_JUMBO_FRAME ;
 int FE_GDM1_JMB_EN ;
 int FE_GDMA1_FWD_CFG ;
 int fe_r32 (int ) ;
 int fe_w32 (int,int ) ;

void fe_fwd_config(struct fe_priv *priv)
{
 u32 fwd_cfg;

 fwd_cfg = fe_r32(FE_GDMA1_FWD_CFG);


 if (priv->flags & FE_FLAG_JUMBO_FRAME)
  fwd_cfg &= ~FE_GDM1_JMB_EN;


 fwd_cfg &= ~0xffff;

 fe_w32(fwd_cfg, FE_GDMA1_FWD_CFG);
}
