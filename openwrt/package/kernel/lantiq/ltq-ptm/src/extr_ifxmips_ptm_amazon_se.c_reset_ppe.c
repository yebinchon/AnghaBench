
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 unsigned int* IFX_PP32_ENET_MAC_CFG ;
 int* IFX_PP32_ETOP_CFG ;
 unsigned int* IFX_PP32_ETOP_IG_PLEN_CTRL ;
 unsigned int* IFX_PP32_ETOP_MDIO_CFG ;
 int IFX_RCU_DOMAIN_PPE ;
 int IFX_RCU_MODULE_PTM ;
 int ifx_rcu_rst (int ,int ) ;

__attribute__((used)) static inline void reset_ppe(struct platform_device *pdev)
{
}
