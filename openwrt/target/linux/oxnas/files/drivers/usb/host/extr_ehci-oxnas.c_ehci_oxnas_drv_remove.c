
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
struct oxnas_hcd {int clk; int refsrc; int phyref; scalar_t__ use_pllb; } ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 TYPE_1__* hcd_to_ehci (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ehci_oxnas_drv_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct oxnas_hcd *oxnas = (struct oxnas_hcd *)hcd_to_ehci(hcd)->priv;

 usb_remove_hcd(hcd);
 if (oxnas->use_pllb) {
  clk_disable_unprepare(oxnas->phyref);
  clk_put(oxnas->phyref);
  clk_disable_unprepare(oxnas->refsrc);
  clk_put(oxnas->refsrc);
 }
 clk_disable_unprepare(oxnas->clk);
 usb_put_hcd(hcd);

 return 0;
}
