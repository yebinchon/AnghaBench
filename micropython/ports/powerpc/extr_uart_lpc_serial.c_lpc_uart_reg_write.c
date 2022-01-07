
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ lpc_uart_base ;

__attribute__((used)) static void lpc_uart_reg_write(uint64_t offset, uint8_t val) {
    uint64_t addr;

    addr = lpc_uart_base + offset;

    *(volatile uint8_t *)addr = val;
}
