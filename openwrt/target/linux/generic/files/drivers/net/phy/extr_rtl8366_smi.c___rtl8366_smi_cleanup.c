
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int gpio_sda; int gpio_sck; int ext_mbus; int (* hw_reset ) (struct rtl8366_smi*,int) ;} ;


 int gpio_free (int ) ;
 int stub1 (struct rtl8366_smi*,int) ;

__attribute__((used)) static void __rtl8366_smi_cleanup(struct rtl8366_smi *smi)
{
 if (smi->hw_reset)
  smi->hw_reset(smi, 1);

 if (!smi->ext_mbus) {
  gpio_free(smi->gpio_sck);
  gpio_free(smi->gpio_sda);
 }
}
