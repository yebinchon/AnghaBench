
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int REG_WR (struct rtl8366_smi*,int ,int) ;
 int RTL8367_LED_SYS_CONFIG_REG ;

__attribute__((used)) static int rtl8367_led_op_select_parallel(struct rtl8366_smi *smi)
{
 int err;

 REG_WR(smi, RTL8367_LED_SYS_CONFIG_REG, 0x1472);
 return 0;
}
