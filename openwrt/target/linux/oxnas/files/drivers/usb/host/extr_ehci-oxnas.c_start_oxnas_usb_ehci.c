
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxnas_hcd {int clk; int syscon; scalar_t__ use_phya; scalar_t__ use_pllb; int rst_phyb; int rst_phya; int rst_host; int phyref; int refsrc; } ;


 int PLLB_DIV_CTRL_REGOFFSET ;
 unsigned long PLLB_DIV_FRAC (int ) ;
 unsigned long PLLB_DIV_INT (int) ;
 unsigned long REF300_DIV_FRAC (int ) ;
 unsigned long REF300_DIV_INT (int) ;
 int REF300_DIV_REGOFFSET ;
 int USBAMUX_DEVICE ;
 int USBHSPHY_CTRL_REGOFFSET ;
 unsigned long USBHSPHY_TEST_ADD ;
 unsigned long USBHSPHY_TEST_CLK ;
 int USBHSPHY_TEST_DIN ;
 unsigned long USB_CLK_INTERNAL ;
 int USB_CTRL_REGOFFSET ;
 unsigned long USB_INT_CLK_PLLB ;
 unsigned long USB_INT_CLK_REF300 ;
 int clk_prepare_enable (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int,unsigned long) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static void start_oxnas_usb_ehci(struct oxnas_hcd *oxnas)
{
 if (oxnas->use_pllb) {

  clk_prepare_enable(oxnas->refsrc);

  clk_prepare_enable(oxnas->phyref);

  regmap_write_bits(oxnas->syscon, PLLB_DIV_CTRL_REGOFFSET, 0xffff, PLLB_DIV_INT(50) | PLLB_DIV_FRAC(0));
 } else {

  regmap_write_bits(oxnas->syscon, REF300_DIV_REGOFFSET, 0xffff, REF300_DIV_INT(25) | REF300_DIV_FRAC(0));
 }


 reset_control_reset(oxnas->rst_host);
 reset_control_reset(oxnas->rst_phya);
 reset_control_reset(oxnas->rst_phyb);



 regmap_write_bits(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
     (2UL << USBHSPHY_TEST_ADD) |
     (0xe0UL << USBHSPHY_TEST_DIN));

 regmap_write_bits(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
     (1UL << USBHSPHY_TEST_CLK) |
     (2UL << USBHSPHY_TEST_ADD) |
     (0xe0UL << USBHSPHY_TEST_DIN));

 regmap_write_bits(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
     (0xfUL << USBHSPHY_TEST_ADD) |
     (0xaaUL << USBHSPHY_TEST_DIN));

 regmap_write_bits(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
     (1UL << USBHSPHY_TEST_CLK) |
     (0xfUL << USBHSPHY_TEST_ADD) |
     (0xaaUL << USBHSPHY_TEST_DIN));

 if (oxnas->use_pllb)
  regmap_write_bits(oxnas->syscon, USB_CTRL_REGOFFSET, 0xffff,
      USB_CLK_INTERNAL | USB_INT_CLK_PLLB);
 else
  regmap_write_bits(oxnas->syscon, USB_CTRL_REGOFFSET, 0xffff,
      USB_CLK_INTERNAL | USB_INT_CLK_REF300);

 if (oxnas->use_phya) {

  regmap_update_bits(oxnas->syscon, USB_CTRL_REGOFFSET, USBAMUX_DEVICE, 0);
 }


 clk_prepare_enable(oxnas->clk);
}
