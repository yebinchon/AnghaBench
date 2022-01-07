
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ potato_uart_base ;

__attribute__((used)) static uint64_t potato_uart_reg_read(int offset) {
    uint64_t addr;
    uint64_t val;

    addr = potato_uart_base + offset;

    val = *(volatile uint64_t *)addr;

    return val;
}
