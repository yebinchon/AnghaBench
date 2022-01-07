
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; int duplex; int speed; } ;


 int ATU_OP ;
 int DUPLEX_FULL ;
 int MV_ATUOP_FLUSH_ALL ;
 int MV_ATUOP_INPROGRESS ;
 int MV_SWITCHREG (int ) ;
 int SPEED_100 ;
 int mvswitch_wait_mask (struct phy_device*,int ,int,int ) ;
 int w16 (struct phy_device*,int ,int) ;

__attribute__((used)) static int
mvswitch_read_status(struct phy_device *pdev)
{
 pdev->speed = SPEED_100;
 pdev->duplex = DUPLEX_FULL;
 pdev->link = 1;






 mvswitch_wait_mask(pdev, MV_SWITCHREG(ATU_OP), MV_ATUOP_INPROGRESS, 0);


 w16(pdev, MV_SWITCHREG(ATU_OP),
  MV_ATUOP_INPROGRESS |
  MV_ATUOP_FLUSH_ALL
 );


 mvswitch_wait_mask(pdev, MV_SWITCHREG(ATU_OP), MV_ATUOP_INPROGRESS, 0);

 return 0;
}
