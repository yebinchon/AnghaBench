
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8216_ATU_CTRL_AGE_EN ;
 int AR8216_ATU_CTRL_LEARN_CHANGE ;
 int AR8216_GLOBAL_CPUPORT_EN ;
 int AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S ;
 int AR8216_REG_ATU_CTRL ;
 int AR8216_REG_FLOOD_MASK ;
 int AR8216_REG_GLOBAL_CPUPORT ;
 int AR8216_REG_GLOBAL_CTRL ;
 int AR8216_REG_MIB_FUNC ;
 int AR8216_REG_SERVICE_TAG ;
 int AR8216_REG_TAG_PRIORITY ;
 int AR8216_SERVICE_TAG_M ;
 int AR8229_FLOOD_MASK_BC_DP (int ) ;
 int AR8229_FLOOD_MASK_MC_DP (int ) ;
 int AR8229_QM_CTRL_ARP_EN ;
 int AR8229_REG_QM_CTRL ;
 int AR8236_GCTRL_MTU ;
 int AR8236_MIB_EN ;
 int ar8xxx_reg_set (struct ar8xxx_priv*,int ,int) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int ,int ) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;

__attribute__((used)) static void
ar8229_init_globals(struct ar8xxx_priv *priv)
{


 ar8xxx_write(priv, AR8216_REG_GLOBAL_CPUPORT,
       AR8216_GLOBAL_CPUPORT_EN |
       (15 << AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S));


 ar8xxx_write(priv, AR8216_REG_TAG_PRIORITY, 0xfa50);


 ar8xxx_write(priv, AR8216_REG_ATU_CTRL,
       0x2b |
       AR8216_ATU_CTRL_AGE_EN |
       AR8216_ATU_CTRL_LEARN_CHANGE);


 ar8xxx_reg_set(priv, AR8229_REG_QM_CTRL,
         AR8229_QM_CTRL_ARP_EN);


 ar8xxx_reg_set(priv, AR8216_REG_FLOOD_MASK,
         AR8229_FLOOD_MASK_BC_DP(0) |
         AR8229_FLOOD_MASK_MC_DP(0));


 ar8xxx_rmw(priv, AR8216_REG_GLOBAL_CTRL,
     AR8236_GCTRL_MTU, AR8236_GCTRL_MTU);


 ar8xxx_reg_set(priv, AR8216_REG_MIB_FUNC,
         AR8236_MIB_EN);


 ar8xxx_rmw(priv, AR8216_REG_SERVICE_TAG, AR8216_SERVICE_TAG_M, 0);
}
