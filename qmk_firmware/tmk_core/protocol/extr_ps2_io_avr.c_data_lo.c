
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS2_DATA_BIT ;
 int PS2_DATA_DDR ;
 int PS2_DATA_PORT ;

void data_lo(void) {
    PS2_DATA_PORT &= ~(1 << PS2_DATA_BIT);
    PS2_DATA_DDR |= (1 << PS2_DATA_BIT);
}
