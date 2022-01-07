
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; } ;



__attribute__((used)) static int ip17xx_update_link(struct phy_device *pdev)
{
 pdev->link = 1;
 return 0;
}
