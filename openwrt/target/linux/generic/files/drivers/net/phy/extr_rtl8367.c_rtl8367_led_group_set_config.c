
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct rtl8366_smi {int dummy; } ;


 int REG_RMW (struct rtl8366_smi*,int ,unsigned int,unsigned int) ;
 unsigned int RTL8367_LED_CONFIG_LED_CFG_M ;
 int RTL8367_LED_CONFIG_REG ;
 unsigned int RTL8367_LED_CONFIG_SEL ;

__attribute__((used)) static int rtl8367_led_group_set_config(struct rtl8366_smi *smi,
            unsigned int led, unsigned int cfg)
{
 u16 mask;
 u16 set;
 int err;

 mask = (RTL8367_LED_CONFIG_LED_CFG_M << (led * 4)) |
  RTL8367_LED_CONFIG_SEL;
 set = (cfg & RTL8367_LED_CONFIG_LED_CFG_M) << (led * 4);

 REG_RMW(smi, RTL8367_LED_CONFIG_REG, mask, set);
 return 0;
}
