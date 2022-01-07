
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct b53_device* priv; } ;
struct b53_device {int dummy; } ;


 int b53_switch_remove (struct b53_device*) ;

__attribute__((used)) static void b53_phy_remove(struct phy_device *phydev)
{
 struct b53_device *priv = phydev->priv;

 if (!priv)
  return;

 b53_switch_remove(priv);

 phydev->priv = ((void*)0);
}
