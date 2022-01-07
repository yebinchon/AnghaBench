
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int clk_delay; } ;


 int ndelay (int ) ;

__attribute__((used)) static inline void rtl8366_smi_clk_delay(struct rtl8366_smi *smi)
{
 ndelay(smi->clk_delay);
}
