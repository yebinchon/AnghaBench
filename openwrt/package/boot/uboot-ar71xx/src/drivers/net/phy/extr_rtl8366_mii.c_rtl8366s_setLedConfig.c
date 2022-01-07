
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int DBG (char*) ;
 int RTL8366S_LEDCONF_LEDFORCE ;
 int RTL8366S_LED_GROUP_MAX ;
 int RTL8366S_LED_INDICATED_CONF_REG ;
 int printf (char*) ;
 scalar_t__ rtl8366_readRegister (int ,int*) ;
 scalar_t__ rtl8366_writeRegister (int ,int) ;

int rtl8366s_setLedConfig(uint32_t ledNum, uint8_t config)
{
    uint16_t regData;

 if(ledNum >= RTL8366S_LED_GROUP_MAX) {
  DBG("rtl8366s_setLedConfig: invalid led group\n");
  return -1;
 }

    if(config > RTL8366S_LEDCONF_LEDFORCE) {
  DBG("rtl8366s_setLedConfig: invalid led config\n");
  return -1;
 }

 if (rtl8366_readRegister(RTL8366S_LED_INDICATED_CONF_REG, &regData)) {
        printf("rtl8366s_setLedConfig: failed to get led register!\n");
        return -1;
 }

 regData &= ~(0xF << (ledNum * 4));
 regData |= config << (ledNum * 4);

 if (rtl8366_writeRegister(RTL8366S_LED_INDICATED_CONF_REG, regData)) {
        printf("rtl8366s_setLedConfig: failed to set led register!\n");
        return -1;
 }

 return 0;
}
