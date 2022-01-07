
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart_isr_handle_t ;


 int ESP_INTR_FLAG_IRAM ;
 int ESP_INTR_FLAG_LOWMED ;
 int UART_NUM_0 ;
 int uart_enable_rx_intr (int ) ;
 int uart_irq_handler ;
 int uart_isr_register (int ,int ,int *,int,int *) ;

void uart_init(void) {
    uart_isr_handle_t handle;
    uart_isr_register(UART_NUM_0, uart_irq_handler, ((void*)0), ESP_INTR_FLAG_LOWMED | ESP_INTR_FLAG_IRAM, &handle);
    uart_enable_rx_intr(UART_NUM_0);
}
