
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIM_SCGC4 ;
 int SIM_SCGC4_UART0 ;
 int SIM_SCGC4_UART1 ;
 int SIM_SCGC4_UART2 ;
 int SIM_SCGC4_USBOTG ;
 int uart0_status_isr () ;
 int uart1_status_isr () ;
 int uart2_status_isr () ;
 int usb_isr () ;

void fault_isr(void)
{
 while (1) {


  if (SIM_SCGC4 & SIM_SCGC4_USBOTG) usb_isr();
  if (SIM_SCGC4 & SIM_SCGC4_UART0) uart0_status_isr();
  if (SIM_SCGC4 & SIM_SCGC4_UART1) uart1_status_isr();
  if (SIM_SCGC4 & SIM_SCGC4_UART2) uart2_status_isr();
 }
}
