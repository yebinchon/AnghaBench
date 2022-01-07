
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int AR71XX_RESET_GE0_PHY ;
 int ath79_device_reset_clear (int ) ;
 int ath79_device_reset_set (int ) ;

__attribute__((used)) static void tl_wr1043nd_rtl8366rb_hw_reset(struct rtl8366_smi *smi, bool active)
{
 if (active)
  ath79_device_reset_set(AR71XX_RESET_GE0_PHY);
 else
  ath79_device_reset_clear(AR71XX_RESET_GE0_PHY);
}
