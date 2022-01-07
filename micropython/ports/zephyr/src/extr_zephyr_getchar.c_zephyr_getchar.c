
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int K_FOREVER ;
 int UART_BUFSIZE ;
 int i_get ;
 unsigned int irq_lock () ;
 int irq_unlock (unsigned int) ;
 int k_sem_take (int *,int ) ;
 int * uart_ringbuf ;
 int uart_sem ;

uint8_t zephyr_getchar(void) {
    k_sem_take(&uart_sem, K_FOREVER);
    unsigned int key = irq_lock();
    uint8_t c = uart_ringbuf[i_get++];
    i_get &= UART_BUFSIZE - 1;
    irq_unlock(key);
    return c;
}
