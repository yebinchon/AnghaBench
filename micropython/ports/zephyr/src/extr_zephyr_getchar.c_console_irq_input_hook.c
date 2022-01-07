
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int UART_BUFSIZE ;
 int i_get ;
 int i_put ;
 int k_sem_give (int *) ;
 int k_yield () ;
 scalar_t__ mp_interrupt_char ;
 int mp_keyboard_interrupt () ;
 int printk (char*) ;
 scalar_t__* uart_ringbuf ;
 int uart_sem ;

__attribute__((used)) static int console_irq_input_hook(uint8_t ch)
{
    int i_next = (i_put + 1) & (UART_BUFSIZE - 1);
    if (i_next == i_get) {
        printk("UART buffer overflow - char dropped\n");
        return 1;
    }
    if (ch == mp_interrupt_char) {
        mp_keyboard_interrupt();
        return 1;
    } else {
        uart_ringbuf[i_put] = ch;
        i_put = i_next;
    }

    k_sem_give(&uart_sem);
    k_yield();
    return 1;
}
