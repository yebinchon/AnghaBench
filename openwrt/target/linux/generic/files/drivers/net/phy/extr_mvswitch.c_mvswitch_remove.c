
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct mvswitch_priv {int dummy; } ;


 int kfree (struct mvswitch_priv*) ;
 struct mvswitch_priv* to_mvsw (struct phy_device*) ;

__attribute__((used)) static void
mvswitch_remove(struct phy_device *pdev)
{
 struct mvswitch_priv *priv = to_mvsw(pdev);

 kfree(priv);
}
