
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ potato_uart_base ;

void potato_uart_reg_write(int offset, uint64_t val) {
    uint64_t addr;

    addr = potato_uart_base + offset;

    *(volatile uint64_t *)addr = val;
}
