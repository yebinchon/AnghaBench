
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct oxnas_pcie_phy {scalar_t__ membase; } ;


 int ADDR_VAL (int) ;
 int CAP_DATA ;
 int DATA_VAL (int) ;
 scalar_t__ PHY_ADDR ;
 scalar_t__ PHY_DATA ;
 int WRITE_EN ;
 struct oxnas_pcie_phy* phy_get_drvdata (struct phy*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int oxnas_pcie_phy_power_on(struct phy *phy)
{
 struct oxnas_pcie_phy *pciephy = phy_get_drvdata(phy);


 writel(ADDR_VAL(0x0014), pciephy->membase + PHY_ADDR);
 writel(DATA_VAL(0xce10) | CAP_DATA, pciephy->membase + PHY_DATA);
 writel(DATA_VAL(0xce10) | WRITE_EN, pciephy->membase + PHY_DATA);

 writel(ADDR_VAL(0x2004), pciephy->membase + PHY_ADDR);
 writel(DATA_VAL(0x82c7) | CAP_DATA, pciephy->membase + PHY_DATA);
 writel(DATA_VAL(0x82c7) | WRITE_EN, pciephy->membase + PHY_DATA);

 return 0;
}
