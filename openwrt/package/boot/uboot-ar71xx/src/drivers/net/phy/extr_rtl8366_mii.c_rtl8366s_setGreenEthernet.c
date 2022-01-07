
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



 int RTL8366S_MODEL_ID_REG ;
 int const RTL8366S_PHY_ACCESS_CTRL_REG ;
 int const RTL8366S_PHY_CTRL_WRITE ;
 int RTL8366S_PHY_NO_MAX ;
 int printf (char*) ;
 scalar_t__ rtl8366_readRegister (int ,int*) ;
 int rtl8366_writeRegister (int const,int const) ;
 scalar_t__ rtl8366s_setGreenFeature (int,int) ;
 scalar_t__ rtl8366s_setPowerSaving (int,int) ;

int rtl8366s_setGreenEthernet(uint32_t greenFeature, uint32_t powerSaving)
{
    uint32_t phyNum, i;
    uint16_t regData;

 const uint16_t greenSettings[][2] =
 {
  {0xBE5B,0x3500},
  {0xBE5C,0xB975},
  {0xBE5D,0xB9B9},
  {0xBE77,0xA500},
  {0xBE78,0x5A78},
  {0xBE79,0x6478}
 };

    if (rtl8366_readRegister(RTL8366S_MODEL_ID_REG, &regData))
        return -1;

 switch (regData)
 {
  case 0x0000:
   for (i = 0; i < 6; i++) {
    if (rtl8366_writeRegister(RTL8366S_PHY_ACCESS_CTRL_REG, RTL8366S_PHY_CTRL_WRITE))
     return -1;
    if (rtl8366_writeRegister(greenSettings[i][0], greenSettings[i][1]))
     return -1;
   }
   break;

  case 128:
   if (rtl8366_writeRegister(RTL8366S_PHY_ACCESS_CTRL_REG, RTL8366S_PHY_CTRL_WRITE))
    return -1;
   if (rtl8366_writeRegister(greenSettings[0][0], greenSettings[0][1]))
    return -1;
   break;

  default:
   printf("rtl8366s_initChip: unsupported chip found!\n");
   return -1;
 }

    if (rtl8366s_setGreenFeature(greenFeature, powerSaving))
        return -1;

    for (phyNum = 0; phyNum <= RTL8366S_PHY_NO_MAX; phyNum++) {
        if (rtl8366s_setPowerSaving(phyNum, powerSaving))
            return -1;
    }

    return 0;
}
