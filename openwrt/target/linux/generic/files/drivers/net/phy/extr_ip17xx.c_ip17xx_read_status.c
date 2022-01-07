
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; scalar_t__ asym_pause; scalar_t__ pause; int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int SPEED_100 ;

__attribute__((used)) static int ip17xx_read_status(struct phy_device *pdev)
{
 pdev->speed = SPEED_100;
 pdev->duplex = DUPLEX_FULL;
 pdev->pause = pdev->asym_pause = 0;
 pdev->link = 1;

 return 0;
}
