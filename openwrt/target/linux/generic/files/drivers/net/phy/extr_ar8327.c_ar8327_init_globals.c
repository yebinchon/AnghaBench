
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {struct ar8327_data* chip_data; } ;
struct ar8327_data {int* eee; } ;


 int AR8327_FWD_CTRL0_CPU_PORT_EN ;
 int AR8327_FWD_CTRL0_MIRROR_PORT ;
 int AR8327_FWD_CTRL1_BC_FLOOD_S ;
 int AR8327_FWD_CTRL1_MC_FLOOD_S ;
 int AR8327_FWD_CTRL1_UC_FLOOD_S ;
 int AR8327_MAX_FRAME_SIZE_MTU ;
 int AR8327_MODULE_EN_MIB ;
 int AR8327_PORTS_ALL ;
 int AR8327_REG_FWD_CTRL0 ;
 int AR8327_REG_FWD_CTRL1 ;
 int AR8327_REG_MAX_FRAME_SIZE ;
 int AR8327_REG_MODULE_EN ;
 int AR8XXX_NUM_PHYS ;
 int ar8xxx_reg_set (struct ar8xxx_priv*,int ,int ) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int ,int) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;

__attribute__((used)) static void
ar8327_init_globals(struct ar8xxx_priv *priv)
{
 struct ar8327_data *data = priv->chip_data;
 u32 t;
 int i;


 t = AR8327_FWD_CTRL0_CPU_PORT_EN |
     AR8327_FWD_CTRL0_MIRROR_PORT;
 ar8xxx_write(priv, AR8327_REG_FWD_CTRL0, t);


 t = (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_UC_FLOOD_S) |
     (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_MC_FLOOD_S) |
     (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_BC_FLOOD_S);
 ar8xxx_write(priv, AR8327_REG_FWD_CTRL1, t);


 ar8xxx_rmw(priv, AR8327_REG_MAX_FRAME_SIZE,
     AR8327_MAX_FRAME_SIZE_MTU, 9018 + 8 + 2);


 ar8xxx_reg_set(priv, AR8327_REG_MODULE_EN,
         AR8327_MODULE_EN_MIB);


 for (i = 0; i < AR8XXX_NUM_PHYS; i++)
  data->eee[i] = 0;
}
