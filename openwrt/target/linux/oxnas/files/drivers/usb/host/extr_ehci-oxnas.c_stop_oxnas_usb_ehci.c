
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxnas_hcd {int clk; int refsrc; int phyref; scalar_t__ use_pllb; int rst_phyb; int rst_phya; int rst_host; } ;


 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void stop_oxnas_usb_ehci(struct oxnas_hcd *oxnas)
{
 reset_control_assert(oxnas->rst_host);
 reset_control_assert(oxnas->rst_phya);
 reset_control_assert(oxnas->rst_phyb);

 if (oxnas->use_pllb) {
  clk_disable_unprepare(oxnas->phyref);
  clk_disable_unprepare(oxnas->refsrc);
 }
 clk_disable_unprepare(oxnas->clk);
}
