
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long potato_uart_divisor(unsigned long proc_freq, unsigned long uart_freq) {
    return proc_freq / (uart_freq * 16) - 1;
}
