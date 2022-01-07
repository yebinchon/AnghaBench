
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct oxnas_pcie {int phy; } ;
struct TYPE_2__ {int refcount; } ;


 TYPE_1__ pcie_shared ;
 int phy_init (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int oxnas_pcie_shared_init(struct platform_device *pdev, struct oxnas_pcie *pcie)
{
 if (++pcie_shared.refcount == 1) {
  phy_init(pcie->phy);
  phy_power_on(pcie->phy);
  return 0;
 } else {
  return 0;
 }
}
