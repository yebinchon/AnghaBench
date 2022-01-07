
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {unsigned int gpio_sda; unsigned int gpio_sck; } ;


 int gpio_set_value (unsigned int,int) ;
 int rtl8366_smi_clk_delay (struct rtl8366_smi*) ;

__attribute__((used)) static void rtl8366_smi_write_bits(struct rtl8366_smi *smi, u32 data, u32 len)
{
 unsigned int sda = smi->gpio_sda;
 unsigned int sck = smi->gpio_sck;

 for (; len > 0; len--) {
  rtl8366_smi_clk_delay(smi);


  gpio_set_value(sda, !!(data & ( 1 << (len - 1))));
  rtl8366_smi_clk_delay(smi);


  gpio_set_value(sck, 1);
  rtl8366_smi_clk_delay(smi);
  gpio_set_value(sck, 0);
 }
}
