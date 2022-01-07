
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_CTRL_CLK_USBHS ;
 int SYS_CTRL_RST_USBHS ;
 int disable_clock (int ) ;
 int reset_block (int ,int) ;

int ehci_hcd_stop(int index)
{
 reset_block(SYS_CTRL_RST_USBHS, 1);
 disable_clock(SYS_CTRL_CLK_USBHS);
 return 0;
}
