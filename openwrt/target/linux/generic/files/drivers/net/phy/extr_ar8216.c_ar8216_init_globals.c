
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8216_GCTRL_MTU ;
 int AR8216_REG_GLOBAL_CTRL ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int ,int) ;
 int ar8xxx_write (struct ar8xxx_priv*,int,int) ;

__attribute__((used)) static void
ar8216_init_globals(struct ar8xxx_priv *priv)
{

 ar8xxx_write(priv, 0x38, 0xc000050e);

 ar8xxx_rmw(priv, AR8216_REG_GLOBAL_CTRL,
     AR8216_GCTRL_MTU, 1518 + 8 + 2);
}
