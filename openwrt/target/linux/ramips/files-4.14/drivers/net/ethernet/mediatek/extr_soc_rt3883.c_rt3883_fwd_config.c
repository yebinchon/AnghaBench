
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {int dummy; } ;


 int FE_PSE_FQFC_CFG_256Q ;
 int FE_PSE_FQ_CFG ;
 int fe_csum_config (struct fe_priv*) ;
 int fe_fwd_config (struct fe_priv*) ;
 int fe_set_clock_cycle (struct fe_priv*) ;
 int fe_w32 (int ,int ) ;

__attribute__((used)) static int rt3883_fwd_config(struct fe_priv *priv)
{
 int ret;

 ret = fe_set_clock_cycle(priv);
 if (ret)
  return ret;

 fe_fwd_config(priv);
 fe_w32(FE_PSE_FQFC_CFG_256Q, FE_PSE_FQ_CFG);
 fe_csum_config(priv);

 return ret;
}
