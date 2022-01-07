
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fe_priv {int dev; } ;


 int BIT (int) ;
 int ETIMEDOUT ;
 int FE_MDIO_ACCESS ;
 int FE_MDIO_RETRY ;
 int dev_err (int ,char*) ;
 int fe_r32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static int rt2880_mdio_wait_ready(struct fe_priv *priv)
{
 int retries;

 retries = FE_MDIO_RETRY;
 while (1) {
  u32 t;

  t = fe_r32(FE_MDIO_ACCESS);
  if ((t & BIT(31)) == 0)
   return 0;

  if (retries-- == 0)
   break;

  udelay(1);
 }

 dev_err(priv->dev, "MDIO operation timed out\n");
 return -ETIMEDOUT;
}
