
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_desc {int dummy; } ;
struct fe_priv {TYPE_1__* dev; } ;
struct TYPE_3__ {int of_node; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (TYPE_1__*,char*,int ) ;
 struct gpio_desc* devm_gpiod_get_optional (TYPE_1__*,char*,int ) ;
 int gpiod_set_value (struct gpio_desc*,int ) ;
 int msleep (int) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void fe_reset_phy(struct fe_priv *priv)
{
 int err, msec = 30;
 struct gpio_desc *phy_reset;

 phy_reset = devm_gpiod_get_optional(priv->dev, "phy-reset",
         GPIOD_OUT_HIGH);
 if (!phy_reset)
  return;

 if (IS_ERR(phy_reset)) {
  dev_err(priv->dev, "Error acquiring reset gpio pins: %ld\n",
   PTR_ERR(phy_reset));
  return;
 }

 err = of_property_read_u32(priv->dev->of_node, "phy-reset-duration",
       &msec);
 if (!err && msec > 1000)
  msec = 30;

 if (msec > 20)
  msleep(msec);
 else
  usleep_range(msec * 1000, msec * 1000 + 1000);

 gpiod_set_value(phy_reset, 0);
}
