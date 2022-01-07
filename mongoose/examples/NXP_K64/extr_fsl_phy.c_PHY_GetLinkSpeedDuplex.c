
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ status_t ;
typedef int phy_speed_t ;
typedef int phy_duplex_t ;
typedef int ENET_Type ;


 int PHY_CONTROL1_REG ;
 int PHY_CTL1_100FULLDUPLEX_MASK ;
 int PHY_CTL1_100HALFDUPLEX_MASK ;
 int PHY_CTL1_10FULLDUPLEX_MASK ;
 int PHY_CTL1_SPEEDUPLX_MASK ;
 scalar_t__ PHY_Read (int *,int,int ,int*) ;
 int assert (int *) ;
 int kPHY_FullDuplex ;
 int kPHY_HalfDuplex ;
 int kPHY_Speed100M ;
 int kPHY_Speed10M ;
 scalar_t__ kStatus_Success ;

status_t PHY_GetLinkSpeedDuplex(ENET_Type *base, uint32_t phyAddr, phy_speed_t *speed, phy_duplex_t *duplex)
{
    assert(duplex);

    status_t result = kStatus_Success;
    uint32_t data, ctlReg;


    result = PHY_Read(base, phyAddr, PHY_CONTROL1_REG, &ctlReg);
    if (result == kStatus_Success)
    {
        data = ctlReg & PHY_CTL1_SPEEDUPLX_MASK;
        if ((PHY_CTL1_10FULLDUPLEX_MASK == data) || (PHY_CTL1_100FULLDUPLEX_MASK == data))
        {

            *duplex = kPHY_FullDuplex;
        }
        else
        {

            *duplex = kPHY_HalfDuplex;
        }

        data = ctlReg & PHY_CTL1_SPEEDUPLX_MASK;
        if ((PHY_CTL1_100HALFDUPLEX_MASK == data) || (PHY_CTL1_100FULLDUPLEX_MASK == data))
        {

            *speed = kPHY_Speed100M;
        }
        else
        {
            *speed = kPHY_Speed10M;
        }
    }

    return result;
}
