
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;
struct platform_device {int dummy; } ;


 struct rtl8366_smi* platform_get_drvdata (struct platform_device*) ;
 int rtl8367_reset_chip (struct rtl8366_smi*) ;

__attribute__((used)) static void rtl8367_shutdown(struct platform_device *pdev)
{
 struct rtl8366_smi *smi = platform_get_drvdata(pdev);

 if (smi)
  rtl8367_reset_chip(smi);
}
