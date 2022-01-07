
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ lpc_uart_base ;

__attribute__((used)) static uint8_t lpc_uart_reg_read(uint64_t offset) {
    uint64_t addr;
    uint8_t val;

    addr = lpc_uart_base + offset;

    val = *(volatile uint8_t *)addr;

    return val;
}
