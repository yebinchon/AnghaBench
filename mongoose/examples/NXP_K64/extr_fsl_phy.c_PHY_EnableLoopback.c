
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ status_t ;
typedef scalar_t__ phy_loop_t ;
typedef int ENET_Type ;


 int PHY_BASICCONTROL_REG ;
 int PHY_BCTL_LOOP_MASK ;
 int PHY_CONTROL2_REG ;
 int PHY_CTL2_REMOTELOOP_MASK ;
 scalar_t__ PHY_Read (int *,int,int ,int*) ;
 scalar_t__ PHY_Write (int *,int,int ,int) ;
 scalar_t__ kPHY_LocalLoop ;
 scalar_t__ kStatus_Success ;

status_t PHY_EnableLoopback(ENET_Type *base, uint32_t phyAddr, phy_loop_t mode, bool enable)
{
    status_t result;
    uint32_t data = 0;


    if (enable)
    {
        if (mode == kPHY_LocalLoop)
        {

            result = PHY_Read(base, phyAddr, PHY_BASICCONTROL_REG, &data);
            if (result == kStatus_Success)
            {
                return PHY_Write(base, phyAddr, PHY_BASICCONTROL_REG, (data | PHY_BCTL_LOOP_MASK));
            }
        }
        else
        {

            result = PHY_Read(base, phyAddr, PHY_CONTROL2_REG, &data);
            if (result == kStatus_Success)
            {
                return PHY_Write(base, phyAddr, PHY_CONTROL2_REG, (data | PHY_CTL2_REMOTELOOP_MASK));
            }
        }
    }
    else
    {

        if (mode == kPHY_LocalLoop)
        {

            result = PHY_Read(base, phyAddr, PHY_BASICCONTROL_REG, &data);
            if (result == kStatus_Success)
            {
                return PHY_Write(base, phyAddr, PHY_BASICCONTROL_REG, (data & ~PHY_BCTL_LOOP_MASK));
            }
        }
        else
        {

            result = PHY_Read(base, phyAddr, PHY_CONTROL2_REG, &data);
            if (result == kStatus_Success)
            {
                return PHY_Write(base, phyAddr, PHY_CONTROL2_REG, (data & ~PHY_CTL2_REMOTELOOP_MASK));
            }
        }
    }
    return result;
}
